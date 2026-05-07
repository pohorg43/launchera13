.class public final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getLauncherBindingState$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic getPendingStoreWidgetId$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->access$getLauncherBindingState$cp()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public final getPendingStoreWidgetId()I
    .registers 1

    invoke-static {}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->access$getPendingStoreWidgetId$cp()I

    move-result p0

    return p0
.end method

.method public final getTargetWidgetInfosOfWhiteList()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->access$getTargetWidgetInfosOfWhiteList$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public final getThemeCardWhiteList()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->access$getThemeCardWhiteList$cp()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    move-result-object p0

    return-object p0
.end method

.method public final setPendingStoreWidgetId(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->access$setPendingStoreWidgetId$cp(I)V

    return-void
.end method

.method public final setThemeCardWhiteList(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->access$setThemeCardWhiteList$cp(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;)V

    return-void
.end method
