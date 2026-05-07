.class public final synthetic Lcom/android/wm/shell/startingsurface/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/i;->a:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iput p2, p0, Lcom/android/wm/shell/startingsurface/i;->b:I

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/i;->a:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/i;->b:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->f(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;ILandroid/os/Bundle;)V

    return-void
.end method
