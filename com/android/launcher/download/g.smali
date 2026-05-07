.class public final synthetic Lcom/android/launcher/download/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/download/DownloadProgressDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/download/g;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
        :pswitch_5  #00000007
        :pswitch_5  #00000008
        :pswitch_5  #00000009
        :pswitch_5  #0000000a
        :pswitch_5  #0000000b
        :pswitch_5  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/download/g;->a:I

    packed-switch v0, :pswitch_data_54

    goto :goto_4e

    :pswitch_6  #0xb
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->a(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_c  #0xa
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->m(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_12  #0x9
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->g(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_18  #0x8
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->n(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1e  #0x7
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->h(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_24  #0x6
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->b(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2a  #0x5
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->l(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_30  #0x4
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->c(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_36  #0x3
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->i(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_3c  #0x2
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->k(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_42  #0x1
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->e(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_48  #0x0
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->j(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_4e
    iget-object p0, p0, Lcom/android/launcher/download/g;->b:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->d(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_42  #00000001
        :pswitch_3c  #00000002
        :pswitch_36  #00000003
        :pswitch_30  #00000004
        :pswitch_2a  #00000005
        :pswitch_24  #00000006
        :pswitch_1e  #00000007
        :pswitch_18  #00000008
        :pswitch_12  #00000009
        :pswitch_c  #0000000a
        :pswitch_6  #0000000b
    .end packed-switch
.end method
