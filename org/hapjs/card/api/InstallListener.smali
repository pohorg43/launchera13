.class public interface abstract Lorg/hapjs/card/api/InstallListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTALL_ERROR_CORRUPTION:I = 0x65

.field public static final INSTALL_ERROR_DOWNGRADE:I = 0x67

.field public static final INSTALL_ERROR_INCOMPATIBLE:I = 0x69

.field public static final INSTALL_ERROR_IO:I = 0x68

.field public static final INSTALL_ERROR_SIGNATURE:I = 0x66

.field public static final INSTALL_ERROR_TIMEOUT:I = 0x6b

.field public static final INSTALL_ERROR_UNAVAILABLE:I = 0x6a

.field public static final INSTALL_ERROR_UNKNOWN:I = 0x64

.field public static final INSTALL_RESULT_FAILED:I = 0x1

.field public static final INSTALL_RESULT_OK:I


# virtual methods
.method public abstract onInstallResult(Ljava/lang/String;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onInstallResult(Ljava/lang/String;II)V
.end method
