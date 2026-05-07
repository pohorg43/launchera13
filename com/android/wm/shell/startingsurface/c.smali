.class public final synthetic Lcom/android/wm/shell/startingsurface/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/c;->a:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/c;->a:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/c;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->e(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;)I

    move-result p0

    return p0
.end method
