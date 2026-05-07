.class public final synthetic Lcom/android/launcher3/graphics/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControlViewHost;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/graphics/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/graphics/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/graphics/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/graphics/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/graphics/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->release()V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/launcher3/graphics/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    invoke-static {p0}, Lcom/android/launcher3/graphics/BitmapCreationCheck;->a(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/launcher3/graphics/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {p0}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->onDestroy()V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
