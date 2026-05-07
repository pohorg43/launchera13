.class public final synthetic Lcom/android/launcher/download/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/download/i;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

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
    .end packed-switch
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/download/i;->a:I

    packed-switch v0, :pswitch_data_48

    goto :goto_42

    :pswitch_6  #0x9
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->f(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_c  #0x8
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->k(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_12  #0x7
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->d(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_18  #0x6
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->g(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1e  #0x5
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->a(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_24  #0x4
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->i(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2a  #0x3
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->h(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_30  #0x2
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->c(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_36  #0x1
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->b(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_3c  #0x0
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->j(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_42
    iget-object p0, p0, Lcom/android/launcher/download/i;->b:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->e(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3c  #00000000
        :pswitch_36  #00000001
        :pswitch_30  #00000002
        :pswitch_2a  #00000003
        :pswitch_24  #00000004
        :pswitch_1e  #00000005
        :pswitch_18  #00000006
        :pswitch_12  #00000007
        :pswitch_c  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method
