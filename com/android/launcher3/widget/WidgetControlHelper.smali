.class public final Lcom/android/launcher3/widget/WidgetControlHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/WidgetControlHelper$Companion;
    }
.end annotation


# static fields
.field private static final CONFIG_LIST_NAME_LAUNCHER_WIDGET_TOAST_CONFIG:Ljava/lang/String; = "launcher_request_pin_widget_toast_config"

.field private static final CONFIG_NAME_LAUNCHER_WIDGET_TOAST_ENABLE:Ljava/lang/String; = "launcher_request_pin_widget_toast_enable"

.field public static final Companion:Lcom/android/launcher3/widget/WidgetControlHelper$Companion;

.field private static final STRING_ARRAY_NAME_LAUNCHER_WIDGET_WHITELIST_COMPONENTINFO:Ljava/lang/String; = "launcher_request_pin_widget_whitelist_componentInfo"

.field private static final STRING_ARRAY_NAME_LAUNCHER_WIDGET_WHITELIST_PACKAGE:Ljava/lang/String; = "launcher_request_pin_widget_whitelist_package"

.field private static final STRING_TAG_LAUNCHER_WIDGET_WHITELIST_COMPONENTINFO:Ljava/lang/String; = "ComponentInfo"

.field private static final STRING_TAG_LAUNCHER_WIDGET_WHITELIST_PACKAGE:Ljava/lang/String; = "Package"

.field private static final TAG:Ljava/lang/String; = "WidgetControlHelper"

.field public static final WIDGET_TOAST_CONFIG_DISABLE:I = 0x0

.field public static final WIDGET_TOAST_CONFIG_ENABLE:I = 0x1

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/android/launcher3/widget/WidgetControlHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComponentInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

.field private mToastEnable:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/widget/WidgetControlHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetControlHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/widget/WidgetControlHelper;->Companion:Lcom/android/launcher3/widget/WidgetControlHelper$Companion;

    sget-object v0, Lcom/android/launcher3/widget/WidgetControlHelper$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher3/widget/WidgetControlHelper$Companion$sInstance$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/widget/WidgetControlHelper;->sInstance$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mToastEnable:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mComponentInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mPackageList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetControlHelper;->updateRusConfig()V

    new-instance v0, Lcom/android/launcher3/widget/WidgetControlHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/WidgetControlHelper$1;-><init>(Lcom/android/launcher3/widget/WidgetControlHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    sget-object p0, Lcom/android/launcher3/widget/WidgetControlConfigManager;->Companion:Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;->getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/rusconfig/RusBaseConfigManager;->registerRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetControlHelper;->printRusConfigInfo$lambda-14(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/launcher3/widget/WidgetControlHelper;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static final synthetic access$updateRusConfig(Lcom/android/launcher3/widget/WidgetControlHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetControlHelper;->updateRusConfig()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetControlHelper;->printRusConfigInfo$lambda-15(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final getInstance()Lcom/android/launcher3/widget/WidgetControlHelper;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/widget/WidgetControlHelper;->Companion:Lcom/android/launcher3/widget/WidgetControlHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetControlHelper$Companion;->getInstance()Lcom/android/launcher3/widget/WidgetControlHelper;

    move-result-object v0

    return-object v0
.end method

.method private final printRusConfigInfo()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mComponentInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/k1;->g:Lcom/android/launcher3/k1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/common/util/u;->i:Lcom/android/common/util/u;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "components: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " packages: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ToastEnable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetControlHelper;->getToastEnable()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WidgetControlHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final printRusConfigInfo$lambda-14(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private static final printRusConfigInfo$lambda-15(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private final declared-synchronized setToastEnable(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mToastEnable:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final updateRusConfig()V
    .registers 9

    sget-object v0, Lcom/android/launcher3/widget/WidgetControlConfigManager;->Companion:Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;->getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getConfigLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "launcher_request_pin_widget_toast_config"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "launcher_request_pin_widget_toast_enable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    :try_start_4c
    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/WidgetControlHelper;->setToastEnable(I)V

    const-string v1, "WidgetControlHelper"

    const-string/jumbo v2, "updateRusConfig asyncEnable:"

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetControlHelper;->getToastEnable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ly2/p;->a:Ly2/p;
    :try_end_6d
    .catchall {:try_start_4c .. :try_end_6d} :catchall_6e

    goto :goto_73

    :catchall_6e
    move-exception v1

    invoke-static {v1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_73
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7a

    goto :goto_34

    :cond_7a
    const-string v2, "WidgetControlHelper"

    const-string/jumbo v3, "updateRusConfig asyncEnable e:"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_87
    sget-object v0, Lcom/android/launcher3/widget/WidgetControlConfigManager;->Companion:Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;->getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getItemArrays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9b
    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_184

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "launcher_request_pin_widget_whitelist_componentInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_116

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mComponentInfoList:Ljava/util/List;

    monitor-enter v2

    :try_start_b8
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mComponentInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_111

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;
    :try_end_d1
    .catchall {:try_start_b8 .. :try_end_d1} :catchall_113

    :try_start_d1
    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ComponentInfo"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f5

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_e9

    move v6, v4

    goto :goto_ea

    :cond_e9
    move v6, v5

    :goto_ea
    if-eqz v6, :cond_f5

    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mComponentInfoList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f5
    sget-object v3, Ly2/p;->a:Ly2/p;
    :try_end_f7
    .catchall {:try_start_d1 .. :try_end_f7} :catchall_f8

    goto :goto_fd

    :catchall_f8
    move-exception v3

    :try_start_f9
    invoke-static {v3}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_fd
    invoke-static {v3}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_104

    goto :goto_c5

    :cond_104
    const-string v6, "WidgetControlHelper"

    const-string/jumbo v7, "updateRusConfig parse STRING_ARRAY_NAME_LAUNCHER_WIDGET_WHITELIST_COMPONENTINFO e:"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_110
    .catchall {:try_start_f9 .. :try_end_110} :catchall_113

    goto :goto_c5

    :cond_111
    monitor-exit v2

    goto :goto_9b

    :catchall_113
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_116
    const-string v3, "launcher_request_pin_widget_whitelist_package"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mPackageList:Ljava/util/List;

    monitor-enter v2

    :try_start_121
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;
    :try_end_13a
    .catchall {:try_start_121 .. :try_end_13a} :catchall_181

    :try_start_13a
    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Package"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_162

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_152

    move v6, v4

    goto :goto_153

    :cond_152
    move v6, v5

    :goto_153
    if-eqz v6, :cond_162

    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mPackageList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_162
    sget-object v3, Ly2/p;->a:Ly2/p;
    :try_end_164
    .catchall {:try_start_13a .. :try_end_164} :catchall_165

    goto :goto_16a

    :catchall_165
    move-exception v3

    :try_start_166
    invoke-static {v3}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_16a
    invoke-static {v3}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_171

    goto :goto_12e

    :cond_171
    const-string v6, "WidgetControlHelper"

    const-string/jumbo v7, "updateRusConfig parse STRING_ARRAY_NAME_LAUNCHER_WIDGET_WHITELIST_PACKAGE e:"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17d
    .catchall {:try_start_166 .. :try_end_17d} :catchall_181

    goto :goto_12e

    :cond_17e
    monitor-exit v2

    goto/16 :goto_9b

    :catchall_181
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_184
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetControlHelper;->printRusConfigInfo()V

    return-void
.end method


# virtual methods
.method public final getToastEnable()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mToastEnable:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isInWhiteList(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mComponentInfoList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mComponentInfoList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mPackageList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    :goto_2d
    return p0
.end method

.method public final onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    sget-object v1, Lcom/android/launcher3/widget/WidgetControlConfigManager;->Companion:Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetControlConfigManager$Companion;->getInstance()Lcom/android/launcher3/widget/WidgetControlConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/rusconfig/RusBaseConfigManager;->unregisterRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetControlHelper;->mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    return-void
.end method
