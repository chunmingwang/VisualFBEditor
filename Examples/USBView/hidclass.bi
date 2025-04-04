#pragma once

#include once "winapifamily.bi"
#include once "basetyps.bi"

#define GUID_CLASS_INPUT GUID_DEVINTERFACE_HID
'' TODO: DEFINE_GUID (GUID_DEVINTERFACE_HID, 0x4d1e55b2, 0xf16f, 0x11cf, 0x88, 0xcb, 0x00, 0x11, 0x11, 0x00, 0x00, 0x30);
'' TODO: DEFINE_GUID (GUID_HID_INTERFACE_NOTIFY, 0x2c4e2e88, 0x25e6, 0x4c33, 0x88, 0x2f, 0x3d, 0x82, 0xe6, 0x07, 0x36, 0x81);
'' TODO: DEFINE_GUID (GUID_HID_INTERFACE_HIDPARSE, 0xf5c315a5, 0x69ac, 0x4bc2, 0x92, 0x79, 0xd0, 0xb6, 0x45, 0x76, 0xf4, 0x4b);

#define __HIDCLASS_H__
#define GUID_CLASS_INPUT_STR "4D1E55B2-F16F-11CF-88CB-001111000030"
const HID_REVISION = &h00000001
#define HID_CTL_CODE(id) CTL_CODE(FILE_DEVICE_KEYBOARD, (id), METHOD_NEITHER, FILE_ANY_ACCESS)
#define HID_BUFFER_CTL_CODE(id) CTL_CODE(FILE_DEVICE_KEYBOARD, (id), METHOD_BUFFERED, FILE_ANY_ACCESS)
#define HID_IN_CTL_CODE(id) CTL_CODE(FILE_DEVICE_KEYBOARD, (id), METHOD_IN_DIRECT, FILE_ANY_ACCESS)
#define HID_OUT_CTL_CODE(id) CTL_CODE(FILE_DEVICE_KEYBOARD, (id), METHOD_OUT_DIRECT, FILE_ANY_ACCESS)
#define IOCTL_HID_GET_DRIVER_CONFIG HID_BUFFER_CTL_CODE(100)
#define IOCTL_HID_SET_DRIVER_CONFIG HID_BUFFER_CTL_CODE(101)
#define IOCTL_HID_GET_POLL_FREQUENCY_MSEC HID_BUFFER_CTL_CODE(102)
#define IOCTL_HID_SET_POLL_FREQUENCY_MSEC HID_BUFFER_CTL_CODE(103)
#define IOCTL_GET_NUM_DEVICE_INPUT_BUFFERS HID_BUFFER_CTL_CODE(104)
#define IOCTL_SET_NUM_DEVICE_INPUT_BUFFERS HID_BUFFER_CTL_CODE(105)
#define IOCTL_HID_GET_COLLECTION_INFORMATION HID_BUFFER_CTL_CODE(106)
#define IOCTL_HID_GET_COLLECTION_DESCRIPTOR HID_CTL_CODE(100)
#define IOCTL_HID_FLUSH_QUEUE HID_CTL_CODE(101)
#define IOCTL_HID_SET_FEATURE HID_IN_CTL_CODE(100)
#define IOCTL_HID_SET_OUTPUT_REPORT HID_IN_CTL_CODE(101)
#define IOCTL_HID_GET_FEATURE HID_OUT_CTL_CODE(100)
#define IOCTL_GET_PHYSICAL_DESCRIPTOR HID_OUT_CTL_CODE(102)
#define IOCTL_HID_GET_HARDWARE_ID HID_OUT_CTL_CODE(103)
#define IOCTL_HID_GET_INPUT_REPORT HID_OUT_CTL_CODE(104)
#define IOCTL_HID_GET_MANUFACTURER_STRING HID_OUT_CTL_CODE(110)
#define IOCTL_HID_GET_PRODUCT_STRING HID_OUT_CTL_CODE(111)
#define IOCTL_HID_GET_SERIALNUMBER_STRING HID_OUT_CTL_CODE(112)
#define IOCTL_HID_GET_INDEXED_STRING HID_OUT_CTL_CODE(120)
#define IOCTL_HID_GET_MS_GENRE_DESCRIPTOR HID_OUT_CTL_CODE(121)
#define IOCTL_HID_ENABLE_SECURE_READ HID_CTL_CODE(130)
#define IOCTL_HID_DISABLE_SECURE_READ HID_CTL_CODE(131)

type _HID_XFER_PACKET
	reportBuffer as PUCHAR
	reportBufferLen as ULONG
	reportId as UCHAR
end type

type HID_XFER_PACKET as _HID_XFER_PACKET
type PHID_XFER_PACKET as _HID_XFER_PACKET ptr

type _HID_COLLECTION_INFORMATION
	DescriptorSize as ULONG
	Polled as BOOLEAN
	Reserved1(0 to 0) as UCHAR
	VendorID as USHORT
	ProductID as USHORT
	VersionNumber as USHORT
end type

type HID_COLLECTION_INFORMATION as _HID_COLLECTION_INFORMATION
type PHID_COLLECTION_INFORMATION as _HID_COLLECTION_INFORMATION ptr

type _HID_DRIVER_CONFIG
	Size as ULONG
	RingBufferSize as ULONG
end type

type HID_DRIVER_CONFIG as _HID_DRIVER_CONFIG
type PHID_DRIVER_CONFIG as _HID_DRIVER_CONFIG ptr
