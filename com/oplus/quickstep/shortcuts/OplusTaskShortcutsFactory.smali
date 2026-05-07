.class public final Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BUNDLE_KEY_PKG:Ljava/lang/String; = "pkg"

.field private static final BUNDLE_KEY_RESULT:Ljava/lang/String; = "result"

.field private static final CLASS_NAME_COMPACT_WINDOW_MANAGER:Ljava/lang/String; = "com.oplus.compactwindow.OplusCompactWindowManager"

.field public static final CONTENT_PROTECT:Lcom/android/quickstep/TaskShortcutFactory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final EXTERNAL_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final FLOAT_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

.field public static final LOCK_APP:Lcom/android/quickstep/TaskShortcutFactory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final LOCK_SETTINGS:Lcom/android/quickstep/TaskShortcutFactory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final METHOD_NAME_CALL_METHOD:Ljava/lang/String; = "callMethod"

.field private static final METHOD_NAME_GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field private static final METHOD_NAME_IS_ACTIVITY_SUPPORT_EMBEDDED:Ljava/lang/String; = "isActivitySupportEmbeded"

.field public static final PIN:Lcom/android/quickstep/TaskShortcutFactory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final RESULT_SUPPORT_COMPACT_WINDOW_VALUE:I = 0x1

.field public static final SPLIT_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusTaskShortcutsFactory"

.field public static final UNLOCK_APP:Lcom/android/quickstep/TaskShortcutFactory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

    invoke-direct {v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->INSTANCE:Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

    sget-object v0, Lz1/c;->a:Lz1/c;

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->LOCK_APP:Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v0, Lz1/e;->a:Lz1/e;

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->UNLOCK_APP:Lcom/android/quickstep/TaskShortcutFactory;

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$SPLIT_SCREEN$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$SPLIT_SCREEN$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SPLIT_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v0, Lz1/d;->a:Lz1/d;

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->PIN:Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v0, Lcom/android/quickstep/k1;->c:Lcom/android/quickstep/k1;

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->LOCK_SETTINGS:Lcom/android/quickstep/TaskShortcutFactory;

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$CONTENT_PROTECT$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$CONTENT_PROTECT$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->CONTENT_PROTECT:Lcom/android/quickstep/TaskShortcutFactory;

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$FLOAT_WINDOW$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$FLOAT_WINDOW$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->FLOAT_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$EXTERNAL_SCREEN$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory$EXTERNAL_SCREEN$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->EXTERNAL_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final LOCK_APP$lambda-0(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 7

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    instance-of v2, v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const-string v3, "clm"

    if-eqz v2, :cond_2d

    check-cast v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    sget-object v4, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->INSTANCE:Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->showLock(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v4, v1, v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->showLock(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_3a

    :cond_2b
    const/4 v0, 0x0

    goto :goto_3a

    :cond_2d
    sget-object v1, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->INSTANCE:Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->showLock(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result v0

    :goto_3a
    if-nez v0, :cond_3e

    const/4 p0, 0x0

    goto :goto_49

    :cond_3e
    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusLockAppShortcut;

    const-string v1, "taskContainer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusLockAppShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    move-object p0, v0

    :goto_49
    return-object p0
.end method

.method private static final LOCK_SETTINGS$lambda-5(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut;

    const-string v1, "activity"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskContainer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusLockSettingsShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    return-object v0
.end method

.method private static final PIN$lambda-4(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 5

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->isActive()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningEnabled()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockToAppActive()Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isPairTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isMultiSearchTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-nez v0, :cond_8a

    sget-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->INSTANCE:Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    const-string v2, "taskContainer.taskView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->isSplitScreenCard(Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->isMultiWindowMode(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->isTaskInStagedSplit(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->isCompactWindowMode(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->isActivitySupportEmbedded(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_7a

    goto :goto_8a

    :cond_7a
    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusPinShortcut;

    const-string v1, "activity"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskContainer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusPinShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    goto :goto_8b

    :cond_8a
    :goto_8a
    const/4 v0, 0x0

    :goto_8b
    return-object v0
.end method

.method private static final UNLOCK_APP$lambda-2(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 7

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    instance-of v2, v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const-string v3, "clm"

    if-eqz v2, :cond_2e

    sget-object v2, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->INSTANCE:Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

    check-cast v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->showUnlock(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->showUnlock(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v0, 0x0

    goto :goto_3b

    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    goto :goto_3b

    :cond_2e
    sget-object v1, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->INSTANCE:Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->showUnlock(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result v0

    :goto_3b
    if-nez v0, :cond_3f

    const/4 p0, 0x0

    goto :goto_4a

    :cond_3f
    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut;

    const-string v1, "taskContainer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    move-object p0, v0

    :goto_4a
    return-object p0
.end method

.method public static synthetic a(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->LOCK_SETTINGS$lambda-5(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->LOCK_APP$lambda-0(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->PIN$lambda-4(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->UNLOCK_APP$lambda-2(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method private final isActivitySupportEmbedded(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 13

    const-class p0, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_7

    goto/16 :goto_ac

    :cond_7
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_d

    goto/16 :goto_ac

    :cond_d
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_15

    goto/16 :goto_ac

    :cond_15
    :try_start_15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.oplus.compactwindow.OplusCompactWindowManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "getInstance"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_30

    return v0

    :cond_30
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "callMethod"

    const/4 v5, 0x6

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v0

    aput-object p0, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    const/4 v7, 0x4

    aput-object p0, v6, v7

    const-class p0, Landroid/os/Bundle;

    const/4 v10, 0x5

    aput-object p0, v6, v10

    invoke-virtual {p1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_5c

    return v0

    :cond_5c
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p1, v5, [Ljava/lang/Object;

    const-string v4, "isActivitySupportEmbeded"

    aput-object v4, p1, v0

    const-string v4, "com.android.launcher"

    aput-object v4, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v8

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, p1, v9

    const-string v4, ""

    aput-object v4, p1, v7

    aput-object v1, p1, v10

    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/os/Bundle;

    if-eqz p1, :cond_84

    check-cast p0, Landroid/os/Bundle;

    goto :goto_85

    :cond_84
    const/4 p0, 0x0

    :goto_85
    if-nez p0, :cond_88

    return v0

    :cond_88
    const-string p1, "result"

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_8f
    .catchall {:try_start_15 .. :try_end_8f} :catchall_93

    if-ne p0, v3, :cond_92

    move v0, v3

    :cond_92
    return v0

    :catchall_93
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9f

    goto :goto_ac

    :cond_9f
    const-string p1, "check app support embedded failed, "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v1, "OplusTaskShortcutsFactory"

    invoke-static {p1, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_ac
    return v0
.end method

.method private final isRecentsViewPortrait(Lcom/android/quickstep/views/TaskView;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p0

    if-eqz p0, :cond_f

    return v0

    :cond_f
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_24

    const/4 v2, 0x2

    if-ne p0, v2, :cond_22

    goto :goto_24

    :cond_22
    move v2, v1

    goto :goto_25

    :cond_24
    :goto_24
    move v2, v0

    :goto_25
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v0, :cond_37

    move p1, v0

    goto :goto_38

    :cond_37
    move p1, v1

    :goto_38
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_5e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecentsViewPortrait: pagedOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isRecentsPortrait="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "QuickStep"

    const-string v4, "OplusTaskShortcutsFactory"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    if-eqz v2, :cond_63

    if-eqz p1, :cond_63

    goto :goto_64

    :cond_63
    move v0, v1

    :goto_64
    return v0
.end method


# virtual methods
.method public final isCompactWindowMode(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    goto :goto_10

    :cond_4
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_9

    goto :goto_10

    :cond_9
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 v0, 0x78

    if-ne p1, v0, :cond_10

    const/4 p0, 0x1

    :cond_10
    :goto_10
    return p0
.end method

.method public final isMultiWindowMode(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    goto :goto_f

    :cond_4
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_f

    const/4 p0, 0x1

    :cond_f
    :goto_f
    return p0
.end method

.method public final isSplitScreenAvailable(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .registers 12

    const-string p0, "OplusTaskShortcutsFactory"

    const-string v0, "QuickStep"

    const-string v1, "activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "taskKey"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    const/16 v2, 0x3e9

    :try_start_12
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v3

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3, p2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result p2
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_28

    :catch_1d
    move-exception p2

    const-string v3, "getSplitScreenState(), e="

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v2

    :goto_28
    const/4 v3, 0x0

    :try_start_29
    invoke-static {p1}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getSplitScreenDisable(Landroid/content/ComponentName;)Z

    move-result v4
    :try_end_32
    .catch Ljava/lang/NoSuchMethodError; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_3e

    :catch_33
    move-exception v4

    const-string v5, "getSplitScreenDisable(), e="

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    :goto_3e
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v5

    if-eqz v5, :cond_47

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4f

    :cond_47
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->isTopWindowZoom()Ljava/lang/Boolean;

    move-result-object v5

    :goto_4f
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_9b

    const-string v7, "SPLIT_SCREEN#isAvailable: , isMultiWindowMode = "

    invoke-static {v7}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", displayId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", splitScreenState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isSplitScreenDisable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isTopWindowZoom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isInSplitScreenMode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, p0, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_b5

    const/4 p0, -0x1

    if-eq v1, p0, :cond_a8

    if-nez v1, :cond_b5

    :cond_a8
    if-ne v2, p2, :cond_b5

    if-nez v4, :cond_b5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_b5

    if-nez v6, :cond_b5

    const/4 v3, 0x1

    :cond_b5
    return v3
.end method

.method public final isSplitScreenCard(Lcom/android/quickstep/views/TaskView;)Z
    .registers 2

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    return p0
.end method

.method public final isTaskInStagedSplit(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_2a

    if-nez p2, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    :goto_9
    if-eqz v0, :cond_2a

    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez v0, :cond_11

    :cond_f
    move v0, p0

    goto :goto_17

    :cond_11
    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_1a

    goto :goto_2a

    :cond_1a
    sget-object p0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    iget-object p1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->isTaskInStagedSplit(I)Z

    move-result p0

    :cond_2a
    :goto_2a
    return p0
.end method

.method public final isUnSupportedExternalScreen(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)Z
    .registers 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_87

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOnePutt()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p0, p3}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->isSplitScreenCard(Lcom/android/quickstep/views/TaskView;)Z

    move-result v0

    if-nez v0, :cond_87

    invoke-direct {p0, p3}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->isRecentsViewPortrait(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_87

    :cond_2b
    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p3, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    const-string v0, "isUnSupportedExternalScreen: displayId "

    const-string v2, "QuickStep"

    const-string v3, "OplusTaskShortcutsFactory"

    invoke-static {p3, v0, v2, v3}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/systemui/shared/recents/model/Task;->isTaskLandscape:Z

    if-nez v0, :cond_87

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.lunyan.kkkd.nearme.gamecenter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_87

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topComponent:Landroid/content/ComponentName;

    if-eqz p2, :cond_87

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    if-eqz p2, :cond_87

    const/4 p2, -0x1

    if-eq p3, p2, :cond_56

    if-eqz p3, :cond_56

    goto :goto_87

    :cond_56
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget p3, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const-string v0, "taskId"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "taskKey.sourceComponent.flattenToShortString()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "taskKey.topComponent.flattenToShortString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "activity.packageName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3, p0, v0, p2}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->isOnePuttSupported(Lcom/android/launcher3/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_87
    :goto_87
    return v1
.end method

.method public final isUnSupportedZoomWindow(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .registers 7

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskKey"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    const-string v0, "isUnSupportedZoomWindow: displayId "

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskShortcutsFactory"

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_49

    const/4 v2, -0x1

    if-eq p0, v2, :cond_24

    if-eqz p0, :cond_24

    goto :goto_49

    :cond_24
    sget-object p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "taskKey.sourceComponent.flattenToShortString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topComponent:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "taskKey.topComponent.flattenToShortString()"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionUtils;->isRapidReactionSupported(Lcom/android/launcher3/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_49
    :goto_49
    return v1
.end method

.method public final showLock(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z
    .registers 5

    const-string p0, "lm"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_9

    goto :goto_27

    :cond_9
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_e

    goto :goto_27

    :cond_e
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLockable(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2, v0, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isApplocked(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_27

    const/4 p0, 0x1

    :cond_27
    :goto_27
    return p0
.end method

.method public final showUnlock(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z
    .registers 5

    const-string p0, "lm"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_9

    goto :goto_27

    :cond_9
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_e

    goto :goto_27

    :cond_e
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLockable(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p2, v0, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isApplocked(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p0, 0x1

    :cond_27
    :goto_27
    return p0
.end method
