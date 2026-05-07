.class public Lcom/oplus/shield/authcode/CommonStatusCodes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AUTHCODE_EXPECTED:I = 0x3ec

.field public static final AUTHCODE_INVALID:I = 0x3ef

.field public static final AUTHCODE_RECYCLE:I = 0x3ee

.field public static final AUTHENTICATE_FAIL:I = 0x3ea

.field public static final AUTHENTICATE_SUCCESS:I = 0x3e9

.field public static final CAPABILITY_EXCEPTION:I = 0x3f0

.field public static final INTERNAL_EXCEPTION:I = 0x3f1

.field public static final PERMISSION_DENIAL:I = 0x3f2

.field public static final TIME_EXPIRED:I = 0x3eb

.field public static final VERSION_INCOMPATIBLE:I = 0x3ed


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    packed-switch p0, :pswitch_data_28

    const-string v0, "unknown status code: "

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a  #0x3f2
    const-string p0, "NONE_PERMISSION"

    return-object p0

    :pswitch_d  #0x3f1
    const-string p0, "INTERNAL_EXCEPTION"

    return-object p0

    :pswitch_10  #0x3f0
    const-string p0, "CAPABILITY_EXCEPTION"

    return-object p0

    :pswitch_13  #0x3ef
    const-string p0, "AUTHCODE_INVALID"

    return-object p0

    :pswitch_16  #0x3ee
    const-string p0, "AUTHCODE_RECYCLE"

    return-object p0

    :pswitch_19  #0x3ed
    const-string p0, "VERSION_INCOMPATIBLE"

    return-object p0

    :pswitch_1c  #0x3ec
    const-string p0, "AUTHCODE_EXPECTED"

    return-object p0

    :pswitch_1f  #0x3eb
    const-string p0, "TIME_EXPIRED"

    return-object p0

    :pswitch_22  #0x3ea
    const-string p0, "AUTHENTICATE_FAIL"

    return-object p0

    :pswitch_25  #0x3e9
    const-string p0, "AUTHENTICATE_SUCCESS"

    return-object p0

    :pswitch_data_28
    .packed-switch 0x3e9
        :pswitch_25  #000003e9
        :pswitch_22  #000003ea
        :pswitch_1f  #000003eb
        :pswitch_1c  #000003ec
        :pswitch_19  #000003ed
        :pswitch_16  #000003ee
        :pswitch_13  #000003ef
        :pswitch_10  #000003f0
        :pswitch_d  #000003f1
        :pswitch_a  #000003f2
    .end packed-switch
.end method
