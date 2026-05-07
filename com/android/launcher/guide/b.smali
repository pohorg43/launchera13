.class public final synthetic Lcom/android/launcher/guide/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/VideoView;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/GuidePageManager;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/guide/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/PendingCardGuide;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/guide/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/guide/b;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher/guide/b;->b:Ljava/lang/Object;

    check-cast p0, Landroid/widget/VideoView;

    invoke-static {p0}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->b(Landroid/widget/VideoView;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/launcher/guide/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager;->e(Lcom/android/launcher/guide/GuidePageManager;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/launcher/guide/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/PendingCardGuide;

    invoke-static {p0}, Lcom/android/launcher/guide/PendingCardGuide;->b(Lcom/android/launcher/guide/PendingCardGuide;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
