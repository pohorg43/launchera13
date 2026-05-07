.class public final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;,
        Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

.field private static final NO_REQUEST:Ljava/lang/String; = "NO_REQUEST"

.field private static final SETTING_KEY:Ljava/lang/String; = "widgetcard.switch.whitelist"

.field private static final TAG:Ljava/lang/String; = "AreaWidgetTransformViewModel"

.field private static final emptyWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

.field private static final launcherBindingState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static pendingStoreWidgetId:I

.field private static final targetWidgetInfosOfWhiteList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;


# instance fields
.field private final _themeCardWhiteListFlow:Lt3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/d<",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;",
            ">;"
        }
    .end annotation
.end field

.field private final _transformRequestFlow:Lt3/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->emptyWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->targetWidgetInfosOfWhiteList:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->pendingStoreWidgetId:I

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->launcherBindingState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 11

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$_themeCardWhiteListFlow$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lb3/d;)V

    new-instance v7, Lt3/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lt3/b;-><init>(Lkotlin/jvm/functions/Function2;Lb3/f;ILs3/e;I)V

    sget-object v4, Lq3/q0;->c:Lq3/b0;

    sget v1, Lq3/i1;->C:I

    sget-object v1, Lq3/i1$b;->a:Lq3/i1$b;

    invoke-interface {v4, v1}, Lb3/f;->get(Lb3/f$b;)Lb3/f$a;

    move-result-object v1

    if-nez v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-eqz v1, :cond_8e

    sget-object v1, Lb3/h;->a:Lb3/h;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_3d

    :cond_33
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x6

    const/4 v8, 0x0

    move-object v3, v7

    move v7, v1

    invoke-static/range {v3 .. v8}, Lu3/m$a;->a(Lu3/m;Lb3/f;ILs3/e;ILjava/lang/Object;)Lt3/d;

    move-result-object v7

    :goto_3d
    iput-object v7, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_themeCardWhiteListFlow:Lt3/d;

    new-instance v1, Lt3/l;

    const-string v2, "NO_REQUEST"

    invoke-direct {v1, v2}, Lt3/l;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_transformRequestFlow:Lt3/i;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    sget-object v4, Lq3/q0;->a:Lq3/b0;

    new-instance v6, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$1;

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lb3/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    const/4 v4, 0x0

    :try_start_5b
    new-instance v6, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1;

    invoke-direct {v6, p1, p0, v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lb3/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    const/4 v4, 0x0

    new-instance v6, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2;

    invoke-direct {v6, p1, p0, v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$2;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lb3/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    move-result-object p0
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_76

    goto :goto_7b

    :catchall_76
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_7b
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_82

    goto :goto_8d

    :cond_82
    const-string p1, "init exception, "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AreaWidgetTransformViewModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8d
    return-void

    :cond_8e
    const-string p0, "Flow context cannot contain job in it. Had "

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$checkIsFinishBinding(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->checkIsFinishBinding(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLauncherBindingState$cp()Landroidx/lifecycle/MutableLiveData;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->launcherBindingState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static final synthetic access$getPendingStoreWidgetId$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->pendingStoreWidgetId:I

    return v0
.end method

.method public static final synthetic access$getTargetWidgetInfosOfWhiteList$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->targetWidgetInfosOfWhiteList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getThemeCardWhiteList$cp()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    return-object v0
.end method

.method public static final synthetic access$get_themeCardWhiteListFlow$p(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;)Lt3/d;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_themeCardWhiteListFlow:Lt3/d;

    return-object p0
.end method

.method public static final synthetic access$get_transformRequestFlow$p(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;)Lt3/i;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_transformRequestFlow:Lt3/i;

    return-object p0
.end method

.method public static final synthetic access$setPendingStoreWidgetId$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->pendingStoreWidgetId:I

    return-void
.end method

.method public static final synthetic access$setThemeCardWhiteList$cp(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    return-void
.end method

.method private final checkIsFinishBinding(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lq3/q0;->a:Lq3/b0;

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;-><init>(Lb3/d;)V

    invoke-static {p0, p1, p2}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_11

    return-object p0

    :cond_11
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public static final getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method public static final getPendingStoreWidgetId()I
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getPendingStoreWidgetId()I

    move-result v0

    return v0
.end method

.method public static synthetic isSupportTransform$default(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Landroid/content/Context;IILandroid/content/ComponentName;IILjava/lang/Object;)Z
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, -0x1

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public static final setPendingStoreWidgetId(I)V
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->setPendingStoreWidgetId(I)V

    return-void
.end method


# virtual methods
.method public final getWhiteList()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
    .registers 3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "widgetcard.switch.whitelist"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_13
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    if-nez p0, :cond_2a

    sget-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->emptyWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_25

    goto :goto_2a

    :catchall_25
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :cond_2a
    :goto_2a
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "AreaWidgetTransformViewModel"

    if-nez v0, :cond_33

    goto :goto_3e

    :cond_33
    const-string p0, "getWhiteList failed "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->emptyWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    :goto_3e
    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    const-string v0, "getWhiteList -- WhiteList = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final initTargetWidgetInfos(Landroid/content/Context;Lb3/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lq3/q0;->a:Lq3/b0;

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$3;-><init>(Landroid/content/Context;Lb3/d;)V

    invoke-static {p0, v0, p2}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_11

    return-object p0

    :cond_11
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final initTargetWidgetInfos(Lcom/android/launcher/Launcher;)V
    .registers 9

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Lb3/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public final isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;)Z
    .registers 14
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->isSupportTransform$default(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Landroid/content/Context;IILandroid/content/ComponentName;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;I)Z
    .registers 16
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cm"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->targetWidgetInfosOfWhiteList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string/jumbo v0, "targetWidgetInfosOfWhiteList.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-string v1, "AreaWidgetTransformViewModel"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    goto :goto_56

    :cond_21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    const-string/jumbo v4, "targetWidgetInfosOfWhiteList spanX="

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", spanY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {v4, v5, v1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v4, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    if-ne p2, v4, :cond_51

    iget v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    if-ne p3, v0, :cond_51

    move v0, v2

    goto :goto_52

    :cond_51
    move v0, v3

    :goto_52
    if-eqz v0, :cond_25

    move p0, v2

    goto :goto_57

    :cond_56
    :goto_56
    move p0, v3

    :goto_57
    sget-object v4, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->themeCardWhiteList:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->isSupportTransform(Landroid/content/Context;IILandroid/content/ComponentName;I)Z

    move-result p1

    const-string p5, "isSupportTransform spanX:"

    const-string v0, ", spanY:"

    const-string v4, " ComponentName:"

    invoke-static {p5, p2, v0, p3, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " isSupportInWhiteList:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " hasSizeMatchedTarget:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p0, :cond_84

    if-eqz p1, :cond_84

    goto :goto_85

    :cond_84
    move v2, v3

    :goto_85
    return v2
.end method

.method public final requestTransform(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->_transformRequestFlow:Lt3/i;

    invoke-interface {p0, p1}, Lt3/i;->setValue(Ljava/lang/Object;)V

    return-void
.end method
