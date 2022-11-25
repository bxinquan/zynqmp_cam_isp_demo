#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_s_axis_video_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_data_V.dat");
unsigned int ap_apatb_s_axis_video_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_keep_V.dat");
unsigned int ap_apatb_s_axis_video_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_strb_V.dat");
unsigned int ap_apatb_s_axis_video_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_user_V.dat");
unsigned int ap_apatb_s_axis_video_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_last_V.dat");
unsigned int ap_apatb_s_axis_video_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_id_V.dat");
unsigned int ap_apatb_s_axis_video_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_dest_V.dat");
struct __cosim_s32__ { char data[32]; };
struct __cosim_s15__ { char data[16]; };
struct __cosim_s16__ { char data[16]; };
extern "C" void v_frmbuf_wr(__cosim_s32__*, short, short, short, short, int, int, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_v_frmbuf_wr_hw(short __xlx_apatb_param_width, short __xlx_apatb_param_height, short __xlx_apatb_param_stride, short __xlx_apatb_param_video_format, volatile void * __xlx_apatb_param_frm_buffer, volatile void * __xlx_apatb_param_frm_buffer2, volatile void * __xlx_apatb_param_frm_buffer3, volatile void * __xlx_apatb_param_s_axis_video_V_data_V, volatile void * __xlx_apatb_param_s_axis_video_V_keep_V, volatile void * __xlx_apatb_param_s_axis_video_V_strb_V, volatile void * __xlx_apatb_param_s_axis_video_V_user_V, volatile void * __xlx_apatb_param_s_axis_video_V_last_V, volatile void * __xlx_apatb_param_s_axis_video_V_id_V, volatile void * __xlx_apatb_param_s_axis_video_V_dest_V) {
  // Collect __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec
  vector<sc_bv<256> >__xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec;
  for (int j = 0, e = 2073600; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_frm_buffer)[j*32+31];
    __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_frm_buffer = 2073600;
  int __xlx_offset_param_frm_buffer = 0;
  int __xlx_offset_byte_param_frm_buffer = 0*32;
  for (int j = 0, e = 2073600; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_frm_buffer2)[j*32+31];
    __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_frm_buffer2 = 2073600;
  int __xlx_offset_param_frm_buffer2 = 2073600;
  int __xlx_offset_byte_param_frm_buffer2 = 2073600*32;
  for (int j = 0, e = 2073600; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_frm_buffer3)[j*32+31];
    __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_frm_buffer3 = 2073600;
  int __xlx_offset_param_frm_buffer3 = 4147200;
  int __xlx_offset_byte_param_frm_buffer3 = 4147200*32;
  __cosim_s32__* __xlx_frm_buffer_frm_buffer2_frm_buffer3__input_buffer= new __cosim_s32__[__xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec.size()];
  for (int i = 0; i < __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec.size(); ++i) {
    ((long long*)__xlx_frm_buffer_frm_buffer2_frm_buffer3__input_buffer)[i*4+0] = __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_frm_buffer_frm_buffer2_frm_buffer3__input_buffer)[i*4+1] = __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_frm_buffer_frm_buffer2_frm_buffer3__input_buffer)[i*4+2] = __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_frm_buffer_frm_buffer2_frm_buffer3__input_buffer)[i*4+3] = __xlx_frm_buffer_frm_buffer2_frm_buffer3__tmp_vec[i].range(255, 192).to_uint64();
  }
auto* ss_axis_video_V_data_V = bcsim::createStream((hls::stream<__cosim_s15__>*)__xlx_apatb_param_s_axis_video_V_data_V);
auto* ss_axis_video_V_keep_V = bcsim::createStream((hls::stream<short>*)__xlx_apatb_param_s_axis_video_V_keep_V);
auto* ss_axis_video_V_strb_V = bcsim::createStream((hls::stream<short>*)__xlx_apatb_param_s_axis_video_V_strb_V);
auto* ss_axis_video_V_user_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V);
auto* ss_axis_video_V_last_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V);
auto* ss_axis_video_V_id_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V);
auto* ss_axis_video_V_dest_V = bcsim::createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V);
  // DUT call
  v_frmbuf_wr(__xlx_frm_buffer_frm_buffer2_frm_buffer3__input_buffer, __xlx_apatb_param_width, __xlx_apatb_param_height, __xlx_apatb_param_stride, __xlx_apatb_param_video_format, __xlx_offset_byte_param_frm_buffer, __xlx_offset_byte_param_frm_buffer2, __xlx_offset_byte_param_frm_buffer3, ss_axis_video_V_data_V->data<__cosim_s15__>(), ss_axis_video_V_keep_V->data<short>(), ss_axis_video_V_strb_V->data<short>(), ss_axis_video_V_user_V->data<char>(), ss_axis_video_V_last_V->data<char>(), ss_axis_video_V_id_V->data<char>(), ss_axis_video_V_dest_V->data<char>());
// print __xlx_apatb_param_frm_buffer
  sc_bv<256>*__xlx_frm_buffer_output_buffer = new sc_bv<256>[__xlx_size_param_frm_buffer];
  for (int i = 0; i < __xlx_size_param_frm_buffer; ++i) {
    char* start = (char*)(&(__xlx_frm_buffer_frm_buffer2_frm_buffer3__input_buffer[__xlx_offset_param_frm_buffer]));
    __xlx_frm_buffer_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_frm_buffer_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_frm_buffer_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_frm_buffer_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_frm_buffer; ++i) {
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+0] = __xlx_frm_buffer_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+1] = __xlx_frm_buffer_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+2] = __xlx_frm_buffer_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+3] = __xlx_frm_buffer_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+4] = __xlx_frm_buffer_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+5] = __xlx_frm_buffer_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+6] = __xlx_frm_buffer_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+7] = __xlx_frm_buffer_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+8] = __xlx_frm_buffer_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+9] = __xlx_frm_buffer_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+10] = __xlx_frm_buffer_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+11] = __xlx_frm_buffer_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+12] = __xlx_frm_buffer_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+13] = __xlx_frm_buffer_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+14] = __xlx_frm_buffer_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+15] = __xlx_frm_buffer_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+16] = __xlx_frm_buffer_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+17] = __xlx_frm_buffer_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+18] = __xlx_frm_buffer_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+19] = __xlx_frm_buffer_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+20] = __xlx_frm_buffer_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+21] = __xlx_frm_buffer_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+22] = __xlx_frm_buffer_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+23] = __xlx_frm_buffer_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+24] = __xlx_frm_buffer_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+25] = __xlx_frm_buffer_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+26] = __xlx_frm_buffer_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+27] = __xlx_frm_buffer_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+28] = __xlx_frm_buffer_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+29] = __xlx_frm_buffer_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+30] = __xlx_frm_buffer_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer)[i*32+31] = __xlx_frm_buffer_output_buffer[i].range(255, 248).to_uint();
  }
// print __xlx_apatb_param_frm_buffer2
  sc_bv<256>*__xlx_frm_buffer2_output_buffer = new sc_bv<256>[__xlx_size_param_frm_buffer2];
  for (int i = 0; i < __xlx_size_param_frm_buffer2; ++i) {
    char* start = (char*)(&(__xlx_frm_buffer_frm_buffer2_frm_buffer3__input_buffer[__xlx_offset_param_frm_buffer2]));
    __xlx_frm_buffer2_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_frm_buffer2_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_frm_buffer2_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_frm_buffer2_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_frm_buffer2; ++i) {
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+0] = __xlx_frm_buffer2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+1] = __xlx_frm_buffer2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+2] = __xlx_frm_buffer2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+3] = __xlx_frm_buffer2_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+4] = __xlx_frm_buffer2_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+5] = __xlx_frm_buffer2_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+6] = __xlx_frm_buffer2_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+7] = __xlx_frm_buffer2_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+8] = __xlx_frm_buffer2_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+9] = __xlx_frm_buffer2_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+10] = __xlx_frm_buffer2_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+11] = __xlx_frm_buffer2_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+12] = __xlx_frm_buffer2_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+13] = __xlx_frm_buffer2_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+14] = __xlx_frm_buffer2_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+15] = __xlx_frm_buffer2_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+16] = __xlx_frm_buffer2_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+17] = __xlx_frm_buffer2_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+18] = __xlx_frm_buffer2_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+19] = __xlx_frm_buffer2_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+20] = __xlx_frm_buffer2_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+21] = __xlx_frm_buffer2_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+22] = __xlx_frm_buffer2_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+23] = __xlx_frm_buffer2_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+24] = __xlx_frm_buffer2_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+25] = __xlx_frm_buffer2_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+26] = __xlx_frm_buffer2_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+27] = __xlx_frm_buffer2_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+28] = __xlx_frm_buffer2_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+29] = __xlx_frm_buffer2_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+30] = __xlx_frm_buffer2_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer2)[i*32+31] = __xlx_frm_buffer2_output_buffer[i].range(255, 248).to_uint();
  }
// print __xlx_apatb_param_frm_buffer3
  sc_bv<256>*__xlx_frm_buffer3_output_buffer = new sc_bv<256>[__xlx_size_param_frm_buffer3];
  for (int i = 0; i < __xlx_size_param_frm_buffer3; ++i) {
    char* start = (char*)(&(__xlx_frm_buffer_frm_buffer2_frm_buffer3__input_buffer[__xlx_offset_param_frm_buffer3]));
    __xlx_frm_buffer3_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_frm_buffer3_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_frm_buffer3_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_frm_buffer3_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_frm_buffer3; ++i) {
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+0] = __xlx_frm_buffer3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+1] = __xlx_frm_buffer3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+2] = __xlx_frm_buffer3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+3] = __xlx_frm_buffer3_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+4] = __xlx_frm_buffer3_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+5] = __xlx_frm_buffer3_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+6] = __xlx_frm_buffer3_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+7] = __xlx_frm_buffer3_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+8] = __xlx_frm_buffer3_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+9] = __xlx_frm_buffer3_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+10] = __xlx_frm_buffer3_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+11] = __xlx_frm_buffer3_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+12] = __xlx_frm_buffer3_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+13] = __xlx_frm_buffer3_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+14] = __xlx_frm_buffer3_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+15] = __xlx_frm_buffer3_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+16] = __xlx_frm_buffer3_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+17] = __xlx_frm_buffer3_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+18] = __xlx_frm_buffer3_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+19] = __xlx_frm_buffer3_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+20] = __xlx_frm_buffer3_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+21] = __xlx_frm_buffer3_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+22] = __xlx_frm_buffer3_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+23] = __xlx_frm_buffer3_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+24] = __xlx_frm_buffer3_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+25] = __xlx_frm_buffer3_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+26] = __xlx_frm_buffer3_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+27] = __xlx_frm_buffer3_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+28] = __xlx_frm_buffer3_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+29] = __xlx_frm_buffer3_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+30] = __xlx_frm_buffer3_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_frm_buffer3)[i*32+31] = __xlx_frm_buffer3_output_buffer[i].range(255, 248).to_uint();
  }
ss_axis_video_V_data_V->transfer((hls::stream<__cosim_s15__>*)__xlx_apatb_param_s_axis_video_V_data_V);
ss_axis_video_V_keep_V->transfer((hls::stream<short>*)__xlx_apatb_param_s_axis_video_V_keep_V);
ss_axis_video_V_strb_V->transfer((hls::stream<short>*)__xlx_apatb_param_s_axis_video_V_strb_V);
ss_axis_video_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V);
ss_axis_video_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V);
ss_axis_video_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V);
ss_axis_video_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V);
}
