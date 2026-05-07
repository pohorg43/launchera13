.class public final synthetic Lcom/android/common/util/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(III)V
    .registers 5

    iput p3, p0, Lcom/android/common/util/f;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/util/f;->b:I

    iput p2, p0, Lcom/android/common/util/f;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/common/util/f;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget v0, p0, Lcom/android/common/util/f;->b:I

    iget p0, p0, Lcom/android/common/util/f;->c:I

    invoke-static {v0, p0}, Lcom/android/common/util/DisplayDensityUtils;->b(II)V

    return-void

    :goto_e
    iget v0, p0, Lcom/android/common/util/f;->b:I

    iget p0, p0, Lcom/android/common/util/f;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->m(II)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
