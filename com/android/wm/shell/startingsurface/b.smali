.class public final synthetic Lcom/android/wm/shell/startingsurface/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/window/StartingWindowInfo;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/function/Consumer;

.field public final synthetic f:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/b;->a:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/b;->c:Landroid/window/StartingWindowInfo;

    iput p4, p0, Lcom/android/wm/shell/startingsurface/b;->d:I

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/b;->e:Ljava/util/function/Consumer;

    iput-object p6, p0, Lcom/android/wm/shell/startingsurface/b;->f:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/b;->a:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/b;->c:Landroid/window/StartingWindowInfo;

    iget v3, p0, Lcom/android/wm/shell/startingsurface/b;->d:I

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/b;->e:Ljava/util/function/Consumer;

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/b;->f:Ljava/util/function/Consumer;

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->i(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method
