.class public final synthetic Lcom/android/launcher/wallpaper/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/Launcher;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher/wallpaper/a;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/a;->b:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/a;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/wallpaper/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/wallpaper/a;->b:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/a;->c:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager;->b(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher/wallpaper/a;->b:Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/a;->c:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$runLauncherNormal$2$1;->a(Lcom/android/launcher3/Launcher;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
