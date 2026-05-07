.class public final Lcom/android/launcher3/card/theme/util/ThemeCardUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/theme/util/ThemeCardUtils;

.field private static final TAG:Ljava/lang/String; = "ThemeCardUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;

    invoke-direct {v0}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->INSTANCE:Lcom/android/launcher3/card/theme/util/ThemeCardUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppWidgetInfo(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;Lb3/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/content/Context;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lq3/q0;->a:Lq3/b0;

    new-instance v1, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils$getAppWidgetInfo$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Lb3/d;)V

    invoke-static {v0, v1, p3}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getSizeBySpan(II)I
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    if-ne p1, v0, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_13

    move v0, v1

    goto :goto_13

    :cond_e
    if-gt p0, v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    move v0, v2

    :cond_13
    :goto_13
    return v0
.end method

.method public static final getSizeBySpanOfWidget(IILandroid/content/Context;)Ljava/lang/String;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p2

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-lt p0, v3, :cond_13

    if-lt p1, v3, :cond_13

    move v4, v3

    goto :goto_2f

    :cond_13
    if-lt p0, v3, :cond_22

    if-lt p1, v2, :cond_22

    iget v4, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ne v4, v0, :cond_20

    if-ne p0, v3, :cond_20

    if-ne p1, v2, :cond_20

    goto :goto_26

    :cond_20
    move v4, v2

    goto :goto_2f

    :cond_22
    if-lt p0, v2, :cond_28

    if-le p1, v1, :cond_28

    :goto_26
    move v4, v1

    goto :goto_2f

    :cond_28
    if-lt p0, v3, :cond_2e

    if-ne p1, v1, :cond_2e

    move v4, v0

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x4

    :goto_2f
    if-eq v4, v1, :cond_43

    if-eq v4, v2, :cond_40

    if-eq v4, v3, :cond_3d

    if-eq v4, v0, :cond_3a

    const-string v0, "0_0"

    goto :goto_45

    :cond_3a
    const-string v0, "4_1"

    goto :goto_45

    :cond_3d
    const-string v0, "4_4"

    goto :goto_45

    :cond_40
    const-string v0, "4_2"

    goto :goto_45

    :cond_43
    const-string v0, "2_2"

    :goto_45
    const-string v1, "getSizeBySpanOfWidget spanX "

    const-string v2, " spanY "

    const-string v3, " res:"

    invoke-static {v1, p0, v2, p1, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const-string p2, "ThemeCardUtils"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-object v0
.end method

.method public static final getWidgetProviderInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "widgetProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {p0, v3, v5, v5, v4}, Lp3/k;->z(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    :cond_45
    return-object p1
.end method

.method public static final keepPositionConsistentBetween(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "originInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetOutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return-void
.end method
