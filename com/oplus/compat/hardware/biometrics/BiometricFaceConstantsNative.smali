.class public Lcom/oplus/compat/hardware/biometrics/BiometricFaceConstantsNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FACE_AUTHENTICATE_BY_USER:I = 0x1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
