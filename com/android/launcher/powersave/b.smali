.class public final synthetic Lcom/android/launcher/powersave/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/powersave/SuperPowerModeManager$2;Landroid/view/WindowManager;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/powersave/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/powersave/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/powersave/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/powersave/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/powersave/b;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/powersave/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;

    iget-object p0, p0, Lcom/android/launcher/powersave/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowManager;

    invoke-static {v0, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->a(Lcom/android/launcher/powersave/SuperPowerModeManager$2;Landroid/view/WindowManager;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher/powersave/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/powersave/SuperPowerModeManager;

    iget-object p0, p0, Lcom/android/launcher/powersave/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->b(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/content/Context;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
