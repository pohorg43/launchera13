.class public Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomSplashScreen"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OplusSplashScreenPreviewInfo"
.end annotation


# instance fields
.field private mContentView:Landroid/window/SplashScreenView;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/window/SplashScreenView;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->mContentView:Landroid/window/SplashScreenView;

    return-object p0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setContentView(Landroid/window/SplashScreenView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->mContentView:Landroid/window/SplashScreenView;

    return-void
.end method

.method public setContentViewIfPresent(Landroid/window/SplashScreenView;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->setContentView(Landroid/window/SplashScreenView;)V

    :cond_5
    return-void
.end method

.method public setPreviewBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPreviewBitmapIfPresent(Landroid/graphics/Bitmap;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->setPreviewBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "OplusSplashScreenPreviewInfo{mPreviewBitmap="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->mContentView:Landroid/window/SplashScreenView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
