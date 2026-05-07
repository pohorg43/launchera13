.class public Lcom/android/wm/shell/splitscreen/IconDimmer;
.super Landroid/view/WindowlessWindowManager;
.source ""


# static fields
.field private static final ICON_BACKGROUND_SURFACE_NAME:Ljava/lang/String; = "IconDimmerBackground"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundLeash:Landroid/view/SurfaceControl;

.field private mHostLeash:Landroid/view/SurfaceControl;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLeash:Landroid/view/SurfaceControl;

.field private mIconView:Landroid/widget/ImageView;

.field private mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/wm/shell/splitscreen/IconDimmer;

    const-string v0, "IconDimmer"

    sput-object v0, Lcom/android/wm/shell/splitscreen/IconDimmer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceSession;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mSurfaceSession:Landroid/view/SurfaceSession;

    return-void
.end method

.method private static getBackgroundColor(Landroid/app/ActivityManager$RunningTaskInfo;)[F
    .registers 2

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p0

    const/4 v0, -0x1

    if-nez p0, :cond_a

    move p0, v0

    :cond_a
    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, p0

    :goto_e
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public attachToParentSurface(Landroid/view/IWindow;Landroid/view/SurfaceControl$Builder;)V
    .registers 4

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/splitscreen/IconDimmer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mHostLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v0, "IconDimmer#attachToParentSurface"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public create(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 11

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconLeash:Landroid/view/SurfaceControl;

    if-eqz p4, :cond_b

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz p4, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p4

    const/16 v0, 0x7f6

    const/4 v1, 0x0

    invoke-virtual {p1, p4, v0, v1}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mHostLeash:Landroid/view/SurfaceControl;

    new-instance p2, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p4

    invoke-direct {p2, p1, p4, p0}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$layout;->oplus_split_decor:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget p2, Lcom/android/wm/shell/R$id;->split_resizing_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconView:Landroid/widget/ImageView;

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7f6

    const/16 v4, 0x18

    const/4 v5, -0x3

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p4

    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance p3, Landroid/os/Binder;

    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    iput-object p3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget-object p3, Lcom/android/wm/shell/splitscreen/IconDimmer;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const p4, 0x20000040

    or-int/2addr p3, p4

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public hide(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mBackgroundLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mBackgroundLeash:Landroid/view/SurfaceControl;

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_26
    return-void
.end method

.method public release(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_13

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconLeash:Landroid/view/SurfaceControl;

    :cond_13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mBackgroundLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mBackgroundLeash:Landroid/view/SurfaceControl;

    :cond_1c
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mHostLeash:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public setPositionAndAlpha(Landroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mBackgroundLeash:Landroid/view/SurfaceControl;

    if-nez v1, :cond_2e

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mHostLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v3, "IconDimmerBackground"

    invoke-static {v1, v3, v2}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/IconDimmer;->getBackgroundColor(Landroid/app/ActivityManager$RunningTaskInfo;)[F

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mBackgroundLeash:Landroid/view/SurfaceControl;

    const/16 v3, 0x752f

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2e
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_85

    if-eqz v0, :cond_85

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconLeash:Landroid/view/SurfaceControl;

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_85
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {p3, v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_ae
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mIconLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/IconDimmer;->mBackgroundLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
