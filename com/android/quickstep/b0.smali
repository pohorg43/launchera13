.class public final synthetic Lcom/android/quickstep/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/b0;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/b0;->b:Landroid/content/Intent;

    return-void

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/b0;->b:Landroid/content/Intent;

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/b0;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/b0;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/quickstep/b0;->b:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->c(Landroid/content/Intent;)V

    return-void

    :pswitch_c  #0x1
    iget-object p0, p0, Lcom/android/quickstep/b0;->b:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->d(Landroid/content/Intent;)V

    return-void

    :pswitch_12  #0x0
    iget-object p0, p0, Lcom/android/quickstep/b0;->b:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->b(Landroid/content/Intent;)V

    return-void

    :goto_18
    iget-object p0, p0, Lcom/android/quickstep/b0;->b:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/quickstep/TaskAnimationManager;->g(Landroid/content/Intent;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
