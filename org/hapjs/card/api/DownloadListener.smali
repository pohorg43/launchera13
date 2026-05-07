.class public interface abstract Lorg/hapjs/card/api/DownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DOWNLOAD_ERROR_ALREADY_INSTALLED:I = 0x65

.field public static final DOWNLOAD_ERROR_DOWNGRADE:I = 0x66

.field public static final DOWNLOAD_ERROR_INSTALL_FAILED:I = 0x6b

.field public static final DOWNLOAD_ERROR_NETWORK_UNAVAILABLE:I = 0x68

.field public static final DOWNLOAD_ERROR_PACKAGE_PATH_EMPTY:I = 0x69

.field public static final DOWNLOAD_ERROR_PACKAGE_UNAVAILABLE:I = 0x67

.field public static final DOWNLOAD_ERROR_PLATFORM_NOT_SUPPORTED:I = 0x6c

.field public static final DOWNLOAD_ERROR_SDK_NOT_INIT:I = 0x6a

.field public static final DOWNLOAD_ERROR_UNKNOWN:I = 0x64

.field public static final DOWNLOAD_RESULT_FAILED:I = 0x1

.field public static final DOWNLOAD_RESULT_OK:I


# virtual methods
.method public abstract onDownloadResult(Ljava/lang/String;II)V
.end method
