.class public final synthetic Lcom/android/common/util/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 4

    iput p2, p0, Lcom/android/common/util/k0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/util/k0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/common/util/k0;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget p0, p0, Lcom/android/common/util/k0;->b:I

    invoke-static {p0}, Lcom/android/common/util/VibrationUtils;->a(I)V

    return-void

    :goto_c
    iget p0, p0, Lcom/android/common/util/k0;->b:I

    invoke-static {p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;->a(I)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
