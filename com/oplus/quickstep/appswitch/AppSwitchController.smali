.class public Lcom/oplus/quickstep/appswitch/AppSwitchController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;
    }
.end annotation


# static fields
.field private static final ACTION_RECENTS_APP_SWITCH:Ljava/lang/String; = "com.android.launcher.action.ACTION_RECENTS_APP_SWITCH"

.field private static final BROADCAST_KEY_PREV_BASE_PKG:Ljava/lang/String; = "prev_base_pkg"

.field private static final BROADCAST_KEY_PREV_TASK_ID:Ljava/lang/String; = "prev_task_id"

.field private static final BROADCAST_KEY_PREV_TOP_PKG:Ljava/lang/String; = "prev_top_pkg"

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/oplus/quickstep/appswitch/AppSwitchController;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_CURVED_GESTURE_SWITCH_APP:I = 0x3ea

.field private static final MSG_SIDE_GESTURE_GET_ICON:I = 0x3e8

.field private static final MSG_SIDE_GESTURE_SWITCH_APP:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "AppSwitchController"

.field public static final TOUCH_SIDE_LEFT:I = 0x0

.field public static final TOUCH_SIDE_NONE:I = -0x1

.field public static final TOUCH_SIDE_RIGHT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

.field private mRecentsModel:Lcom/android/quickstep/RecentsModel;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/model/l0;->h:Lcom/android/launcher3/model/l0;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    invoke-direct {p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    iput-object p1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/b;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/b;-><init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/appswitch/AppSwitchController;ZLjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->lambda$switchAdjacentApp$0(ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/appswitch/AppSwitchController;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->lambda$handleMessage$2(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/appswitch/AppSwitchController;Ljava/util/function/Consumer;ZLjava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->lambda$getPreTask$3(Ljava/util/function/Consumer;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/oplus/quickstep/appswitch/AppSwitchController;
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/appswitch/AppSwitchController;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/appswitch/AppSwitchController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic e(Lcom/oplus/quickstep/appswitch/AppSwitchController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->onSwitchAppEnd(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/quickstep/appswitch/AppSwitchController;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->lambda$handleMessage$1(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/quickstep/appswitch/AppSwitchController;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private getPreTask(Ljava/util/function/Consumer;Z)V
    .registers 6
    .param p1  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreTask: needIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "AppSwitchController"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    new-instance v1, Lcom/android/launcher3/iconrender/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/iconrender/d;-><init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;Ljava/util/function/Consumer;Z)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .registers 6

    const-string v0, "handleMessage: what = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "QuickStep"

    const-string v3, "AppSwitchController"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    :pswitch_17  #0x3ea
    iget-object p1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    invoke-virtual {p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->reset()V

    new-instance p1, Lcom/oplus/quickstep/appswitch/a;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/oplus/quickstep/appswitch/a;-><init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;I)V

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->getPreTask(Ljava/util/function/Consumer;Z)V

    goto :goto_46

    :pswitch_26  #0x3e9
    iget p1, p1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/oplus/quickstep/appswitch/a;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3}, Lcom/oplus/quickstep/appswitch/a;-><init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->switchPreApp(ILjava/util/function/Consumer;Z)V

    goto :goto_46

    :pswitch_32  #0x3e8
    iget-object p1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    invoke-virtual {p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->reset()V

    new-instance p1, Lcom/oplus/quickstep/appswitch/a;

    invoke-direct {p1, p0, v2}, Lcom/oplus/quickstep/appswitch/a;-><init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;I)V

    invoke-direct {p0, p1, v2}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->getPreTask(Ljava/util/function/Consumer;Z)V

    sget-object p1, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/learning/NotificationHelper;->sendLearningGestureNotificationIfNeed(Landroid/content/Context;)V

    :goto_46
    return v2

    nop

    :pswitch_data_48
    .packed-switch 0x3e8
        :pswitch_32  #000003e8
        :pswitch_26  #000003e9
        :pswitch_17  #000003ea
    .end packed-switch
.end method

.method private isLastOne(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_c

    return v0

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    iget-object v1, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_3e

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p0, p1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    return v0
.end method

.method private isRTL()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private synthetic lambda$getPreTask$3(Ljava/util/function/Consumer;ZLjava/util/ArrayList;)V
    .registers 6

    if-eqz p3, :cond_34

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_34

    :cond_a
    invoke-direct {p0, p3}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->isLastOne(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_1c

    :cond_17
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1c
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/quickstep/util/GroupTask;

    iget-object p3, p3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p2, :cond_30

    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    goto :goto_33

    :cond_30
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_33
    return-void

    :cond_34
    :goto_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPreTask: tasks = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "QuickStep"

    const-string p3, "AppSwitchController"

    invoke-static {p2, p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$1(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreTask: task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "AppSwitchController"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    if-nez p1, :cond_26

    const/4 v1, 0x0

    goto :goto_2e

    :cond_26
    sget-object v1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/common/util/BitmapUtils;->convertByDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2e
    invoke-virtual {v0, v1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->onGetAppIcon(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->update(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$2(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->update(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->isRTL()Z

    move-result p1

    new-instance v0, Lcom/oplus/quickstep/appswitch/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/appswitch/a;-><init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->switchPreApp(ILjava/util/function/Consumer;Z)V

    return-void
.end method

.method private synthetic lambda$switchAdjacentApp$0(ZLjava/util/ArrayList;)V
    .registers 11

    if-eqz p2, :cond_8c

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_b

    goto/16 :goto_8c

    :cond_b
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    const/4 v5, -0x1

    if-ge v4, v2, :cond_33

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/quickstep/util/GroupTask;

    iget-object v6, v6, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v6, v7, :cond_30

    goto :goto_34

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_33
    move v4, v5

    :goto_34
    const-string v6, "AppSwitchController"

    if-ne v4, v5, :cond_4b

    const-string p0, "switchAdjacentApp error. can not find task index for "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4b
    invoke-direct {p0}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_54

    if-eqz p1, :cond_56

    goto :goto_58

    :cond_54
    if-eqz p1, :cond_58

    :cond_56
    add-int/2addr v4, v1

    goto :goto_59

    :cond_58
    :goto_58
    sub-int/2addr v4, v1

    :goto_59
    if-ltz v4, :cond_79

    if-lt v4, v2, :cond_5e

    goto :goto_79

    :cond_5e
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/util/GroupTask;

    iget-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    invoke-virtual {v0}, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->reset()V

    iget-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    iget-object p2, p2, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p2}, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->update(Lcom/android/systemui/shared/recents/model/Task;)V

    new-instance p2, Lcom/oplus/quickstep/appswitch/a;

    invoke-direct {p2, p0, v3}, Lcom/oplus/quickstep/appswitch/a;-><init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;I)V

    invoke-direct {p0, p1, p2, v1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->switchPreApp(ILjava/util/function/Consumer;Z)V

    return-void

    :cond_79
    :goto_79
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_8c

    const-string p0, "switchAdjacentApp return. cannot find next task, nextIndex: "

    const-string p1, ", count: "

    const-string p2, ", isRtl: "

    invoke-static {p0, v4, p1, v2, p2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v0, v6}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method private onSwitchAppEnd(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->sendAppSwitchBroadcast()V

    :cond_5
    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    invoke-virtual {p0}, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->reset()V

    return-void
.end method

.method private sendAppSwitchBroadcast()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.ACTION_RECENTS_APP_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    iget v1, v1, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTaskid:I

    const-string v2, "prev_task_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    iget-object v1, v1, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTopPkgName:Ljava/lang/String;

    const-string v2, "prev_top_pkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    iget-object v1, v1, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredBasePkgName:Ljava/lang/String;

    const-string v2, "prev_base_pkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAppSwitchBroadcast: send ACTION_RECENTS_APP_SWITCH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppSwitchController"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mContext:Landroid/content/Context;

    const-string v1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private switchPreApp(ILjava/util/function/Consumer;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "switchToPreApp: mLastQuiredTaskid = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    iget v1, v1, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTaskid:I

    const-string v2, ", side = "

    const-string v3, "AppSwitchController"

    invoke-static {v0, v1, v2, p1, v3}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    iget v0, v0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTaskid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    const-string p0, "switchToPreApp: no saved taskid, cancel switch this time"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    if-nez p1, :cond_30

    iget-object v4, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mContext:Landroid/content/Context;

    const v5, 0x7f01006a

    const v6, 0x7f01006b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_3f

    :cond_30
    iget-object v4, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mContext:Landroid/content/Context;

    const v5, 0x7f01006c

    const v6, 0x7f01006d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object p1

    :goto_3f
    if-eqz p3, :cond_44

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->setFreezeRecentTasksReordering()V

    :cond_44
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p3

    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mQuiredTaskInfo:Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;

    iget p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController$QuiredTaskInfo;->mLastQuiredTaskid:I

    invoke-virtual {p3, p0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "switchPreApp: result = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onGetAppIcon()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSwitchToPreAppCurvedGesture()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSwitchToPreAppSideGesture(I)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public switchAdjacentApp(Z)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "AppSwitchController"

    const-string p1, "switchAdjacentApp return. current overview shown"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;->mRecentsModel:Lcom/android/quickstep/RecentsModel;

    new-instance v1, Lcom/android/launcher3/iconrender/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/iconrender/c;-><init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    return-void
.end method
