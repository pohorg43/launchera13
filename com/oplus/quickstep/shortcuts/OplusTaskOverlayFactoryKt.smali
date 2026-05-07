.class public final Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

.field private static final MENU_OPTIONS_FOLD:[Lcom/android/quickstep/TaskShortcutFactory;

.field private static final MENU_OPTIONS_TABLET:[Lcom/android/quickstep/TaskShortcutFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v1, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->LOCK_APP:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v3, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->UNLOCK_APP:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    sget-object v5, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->FLOAT_WINDOW:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v6, 0x2

    aput-object v5, v0, v6

    sget-object v7, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->EXTERNAL_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v8, 0x3

    aput-object v7, v0, v8

    sget-object v7, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->SPLIT_SCREEN:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v9, 0x4

    aput-object v7, v0, v9

    sget-object v7, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->PIN:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v10, 0x5

    aput-object v7, v0, v10

    sget-object v11, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->CONTENT_PROTECT:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v12, 0x6

    aput-object v11, v0, v12

    sget-object v13, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->LOCK_SETTINGS:Lcom/android/quickstep/TaskShortcutFactory;

    const/4 v14, 0x7

    aput-object v13, v0, v14

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

    new-array v0, v10, [Lcom/android/quickstep/TaskShortcutFactory;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    aput-object v7, v0, v6

    aput-object v11, v0, v8

    aput-object v13, v0, v9

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_FOLD:[Lcom/android/quickstep/TaskShortcutFactory;

    new-array v0, v12, [Lcom/android/quickstep/TaskShortcutFactory;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    aput-object v5, v0, v6

    aput-object v7, v0, v8

    aput-object v11, v0, v9

    aput-object v13, v0, v10

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_TABLET:[Lcom/android/quickstep/TaskShortcutFactory;

    return-void
.end method

.method public static final getEnabledOplusShortcuts(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "taskContainertaskView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_FOLD:[Lcom/android/quickstep/TaskShortcutFactory;

    goto :goto_2e

    :cond_21
    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS_TABLET:[Lcom/android/quickstep/TaskShortcutFactory;

    goto :goto_2e

    :cond_2c
    sget-object v2, Lcom/oplus/quickstep/shortcuts/OplusTaskOverlayFactoryKt;->MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

    :goto_2e
    const/4 v3, 0x0

    array-length v4, v2

    :cond_30
    :goto_30
    if-ge v3, v4, :cond_40

    aget-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v5, v1, p0}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v5

    if-eqz v5, :cond_30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_40
    return-object v0
.end method
