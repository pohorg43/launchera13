.class public final synthetic Lcom/android/launcher/guide/appguide/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/guide/appguide/AppGuideHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/appguide/AppGuideHelper;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher/guide/appguide/a;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/a;->b:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/guide/appguide/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher/guide/appguide/a;->b:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->b(Lcom/android/launcher/guide/appguide/AppGuideHelper;Landroid/view/View;)V

    return-void

    :pswitch_c  #0x1
    iget-object p0, p0, Lcom/android/launcher/guide/appguide/a;->b:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->a(Lcom/android/launcher/guide/appguide/AppGuideHelper;Landroid/view/View;)V

    return-void

    :pswitch_12  #0x0
    iget-object p0, p0, Lcom/android/launcher/guide/appguide/a;->b:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->c(Lcom/android/launcher/guide/appguide/AppGuideHelper;Landroid/view/View;)V

    return-void

    :goto_18
    iget-object p0, p0, Lcom/android/launcher/guide/appguide/a;->b:Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-static {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->d(Lcom/android/launcher/guide/appguide/AppGuideHelper;Landroid/view/View;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
