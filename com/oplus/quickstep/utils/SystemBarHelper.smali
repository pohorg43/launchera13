.class public final Lcom/oplus/quickstep/utils/SystemBarHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

.field private static final TAG:Ljava/lang/String; = "SystemBarHelper"

.field private static alreadyHidden:Z

.field private static isTaskViewRunning:Z

.field private static isWindowFlagsHideStatusBar:Z

.field private static statusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/SystemBarHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic hideStatusBar$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideStatusBar(Landroid/view/Window;Z)V

    return-void
.end method

.method public static synthetic hideSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x1

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideSystemBars(Landroid/view/Window;ZZ)V

    return-void
.end method

.method public static synthetic showStatusBar$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showStatusBar(Landroid/view/Window;Z)V

    return-void
.end method

.method public static synthetic showSystemBars$default(Lcom/oplus/quickstep/utils/SystemBarHelper;Landroid/view/Window;ZZILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v0

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showSystemBars(Landroid/view/Window;ZZ)V

    return-void
.end method


# virtual methods
.method public final hideStatusBar(Landroid/view/Window;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideStatusBar(Landroid/view/Window;Z)V

    return-void
.end method

.method public final hideStatusBar(Landroid/view/Window;Z)V
    .registers 4

    const-string p0, "hideStatusBar: "

    const-string v0, "SystemBarHelper"

    invoke-static {p2, p0, v0}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_13

    sget-boolean p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->isTaskViewRunning:Z

    if-eqz p0, :cond_13

    const-string p0, "hideStatusBar: task view running, only task-view can control status bar"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    if-nez p1, :cond_16

    goto :goto_24

    :cond_16
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_24

    :cond_1d
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    :goto_24
    return-void
.end method

.method public final hideSystemBars(Landroid/view/Window;ZZ)V
    .registers 6

    const-string p0, "hideSystemBars: withoutAnim = "

    const-string v0, ", isWindowFlagsHideStatusBar = "

    invoke-static {p0, p2, v0}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->isWindowFlagsHideStatusBar:Z

    const-string v1, "SystemBarHelper"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez p1, :cond_12

    goto :goto_3e

    :cond_12
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-interface {p0, p2}, Landroid/view/WindowInsetsController;->setAnimationsDisabled(Z)V

    :goto_1c
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-nez p0, :cond_23

    goto :goto_2a

    :cond_23
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    invoke-interface {p0, p2}, Landroid/view/WindowInsetsController;->hide(I)V

    :goto_2a
    sget-boolean p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->isWindowFlagsHideStatusBar:Z

    if-eqz p0, :cond_30

    if-eqz p3, :cond_3e

    :cond_30
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-nez p0, :cond_37

    goto :goto_3b

    :cond_37
    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :goto_3b
    const/4 p0, 0x1

    sput-boolean p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->isWindowFlagsHideStatusBar:Z

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final notifyStatusBarHidden(Z)V
    .registers 4

    sget-boolean p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->alreadyHidden:Z

    if-eqz p0, :cond_6

    if-nez p1, :cond_a

    :cond_6
    if-nez p0, :cond_b

    if-nez p1, :cond_b

    :cond_a
    return-void

    :cond_b
    sput-boolean p1, Lcom/oplus/quickstep/utils/SystemBarHelper;->alreadyHidden:Z

    if-eqz p1, :cond_12

    const/high16 p0, 0x920000

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->statusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, p0}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStatusBarHidden: isHidden = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", flags = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemBarHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final release()V
    .registers 2

    sget-boolean v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->alreadyHidden:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/SystemBarHelper;->notifyStatusBarHidden(Z)V

    :cond_8
    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->statusBarManager:Landroid/app/StatusBarManager;

    return-void
.end method

.method public final setStatusBarManager(Landroid/app/StatusBarManager;)V
    .registers 2

    sput-object p1, Lcom/oplus/quickstep/utils/SystemBarHelper;->statusBarManager:Landroid/app/StatusBarManager;

    return-void
.end method

.method public final showStatusBar(Landroid/view/Window;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showStatusBar(Landroid/view/Window;Z)V

    return-void
.end method

.method public final showStatusBar(Landroid/view/Window;Z)V
    .registers 4

    const-string p0, "showStatusBar: "

    const-string v0, "SystemBarHelper"

    invoke-static {p2, p0, v0}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_13

    sget-boolean p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->isTaskViewRunning:Z

    if-eqz p0, :cond_13

    const-string p0, "showStatusBar: task view running, only task-view can control status bar"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    if-nez p1, :cond_16

    goto :goto_36

    :cond_16
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_24

    :cond_1d
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    invoke-interface {p0, p2}, Landroid/view/WindowInsetsController;->show(I)V

    :goto_24
    sget-boolean p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->isWindowFlagsHideStatusBar:Z

    if-eqz p0, :cond_36

    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-nez p0, :cond_2f

    goto :goto_33

    :cond_2f
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :goto_33
    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->isWindowFlagsHideStatusBar:Z

    :cond_36
    :goto_36
    return-void
.end method

.method public final showSystemBars(Landroid/view/Window;ZZ)V
    .registers 6

    const-string p0, "showSystemBars: withoutAnim="

    const-string v0, ", withoutChangeFlags = "

    const-string v1, "SystemBarHelper"

    invoke-static {p0, p2, v0, p3, v1}, Lcom/android/common/multiapp/b;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_c

    goto :goto_38

    :cond_c
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_16

    :cond_13
    invoke-interface {p0, p2}, Landroid/view/WindowInsetsController;->setAnimationsDisabled(Z)V

    :goto_16
    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_24

    :cond_1d
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    invoke-interface {p0, p2}, Landroid/view/WindowInsetsController;->show(I)V

    :goto_24
    sget-boolean p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->isWindowFlagsHideStatusBar:Z

    if-eqz p0, :cond_38

    if-nez p3, :cond_38

    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-nez p0, :cond_31

    goto :goto_35

    :cond_31
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :goto_35
    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/quickstep/utils/SystemBarHelper;->isWindowFlagsHideStatusBar:Z

    :cond_38
    :goto_38
    return-void
.end method

.method public final updateTaskViewRunningState(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/quickstep/utils/SystemBarHelper;->isTaskViewRunning:Z

    return-void
.end method
