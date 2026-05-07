.class public Lcom/android/launcher3/widget/AppWidgetTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final STATUS_BAR_FUNCTION_CODE_LOCK_SCREEN:I = 0x1


# instance fields
.field private final mAppWidget:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mStatusBarManager:Landroid/app/OplusStatusBarManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mAppWidget:Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    iput-object p1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "AppWidgetTouchListener"

    iget-object v1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-nez v1, :cond_71

    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    const-string v3, "is_double_click_lock"

    invoke-static {v1, v3, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_71

    :cond_32
    iget-object p1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mStatusBarManager:Landroid/app/OplusStatusBarManager;

    if-nez p1, :cond_3d

    new-instance p1, Landroid/app/OplusStatusBarManager;

    invoke-direct {p1}, Landroid/app/OplusStatusBarManager;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mStatusBarManager:Landroid/app/OplusStatusBarManager;

    :cond_3d
    const/4 p1, 0x1

    :try_start_3e
    iget-object p0, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mStatusBarManager:Landroid/app/OplusStatusBarManager;

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Landroid/app/OplusStatusBarManager;->setStatusBarFunction(ILjava/lang/String;)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarFunction result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5a} :catch_5b

    goto :goto_70

    :catch_5b
    move-exception p0

    const-string v1, "setStatusBarFunction exception ex = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    return p1

    :cond_71
    :goto_71
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/widget/AppWidgetTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method
