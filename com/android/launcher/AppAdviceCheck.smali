.class public final Lcom/android/launcher/AppAdviceCheck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/AppAdviceCheck$ReInstallCallback;
    }
.end annotation


# static fields
.field private static final APP_ADVICE_2PLUS2:I = 0x53

.field private static final APP_ADVICE_4PLUS2:I = 0x52

.field private static final APP_ADVICE_CARD_PROVIDER:Ljava/lang/String; = "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

.field private static final CARD_TYPE:Ljava/lang/String; = "card_type"

.field private static final DELAY_TIME:J = 0x1388L

.field private static final DELAY_TIME_FOR_QUERY:J = 0x1f4L

.field public static final INSTANCE:Lcom/android/launcher/AppAdviceCheck;

.field private static final KEY_APP_ADVICE_CHECK:Ljava/lang/String; = "app_advice_check"

.field private static final NEW_WEATHER_WIDGET_PROVIDER:Ljava/lang/String; = "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeatherSingle"

.field private static final OLD_APP_ADVICE_CARD_PROVIDER:Ljava/lang/String; = "com.heytap.speechassist/com.heytap.speechassist.home.skillmarket.receiver.BreenoCardWidgetProvider"

.field private static final OLD_WEATHER_WIDGET_PROVIDER:Ljava/lang/String; = "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeatherVertical"

.field private static final REINSTALLRESULT_HAS_INSTALLED_ALREADY:I = 0x2

.field private static final REINSTALLTYPE_ADD_LASE_SCREEN:I = 0x3

.field private static final REINSTALLTYPE_ADD_SCREEN:I = 0x5

.field private static final REINSTALLTYPE_DEF:I = -0x1

.field private static final REINSTALLTYPE_EXIST_ADVICE_CARD:I = 0x4

.field private static final REINSTALLTYPE_EXIST_XIAOBU_ADVICE_CONTAINER:I = 0x6

.field private static final REINSTALLTYPE_REPLACE_OLD_CARD:I = 0x1

.field private static final REINSTALLTYPE_REPLACE_WEATHER:I = 0x2

.field private static final REINSTALLTYPE_UNEXECUTED_INSTALL:I = -0x2

.field private static SEL_WEATHER:Ljava/lang/String; = null

.field private static final SPAN2:I = 0x2

.field private static final SPAN3:I = 0x3

.field private static final SPAN4:I = 0x4

.field private static final SPAN5:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AppAdviceCheck"

.field private static isWorking:Z

.field private static mAddCardToLastScreenRunnable:Ljava/lang/Runnable;

.field private static mLauncher:Lcom/android/launcher/Launcher;

.field private static final mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

.field private static reInstallType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/AppAdviceCheck;

    invoke-direct {v0}, Lcom/android/launcher/AppAdviceCheck;-><init>()V

    sput-object v0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    const-string v0, "appWidgetProvider=\"%s\" and itemType=%s and spanX in (3,4,5) and spanY=%s"

    sput-object v0, Lcom/android/launcher/AppAdviceCheck;->SEL_WEATHER:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    invoke-direct {v0}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;-><init>()V

    sput-object v0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck;->getOldAppAdviceInfo$lambda-5(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$buildPendingCardInfo(Lcom/android/launcher/AppAdviceCheck;I)Lcom/android/launcher3/PendingAddItemInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/AppAdviceCheck;->buildPendingCardInfo(I)Lcom/android/launcher3/PendingAddItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdviceCardInfoFromScreen(Lcom/android/launcher/AppAdviceCheck;Landroid/content/Context;I)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck;->getAdviceCardInfoFromScreen(Landroid/content/Context;I)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMLauncher$p()Lcom/android/launcher/Launcher;
    .registers 1

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    return-object v0
.end method

.method public static final synthetic access$getMReInstallCallback$p()Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;
    .registers 1

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    return-object v0
.end method

.method public static final synthetic access$getReInstallType$p()I
    .registers 1

    sget v0, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    return v0
.end method

.method public static final synthetic access$innerTryAddAdviceCard(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/AppAdviceCheck;->innerTryAddAdviceCard(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onReInstallCallback(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/AppAdviceCheck;->onReInstallCallback(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static final synthetic access$replaceCard(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/card/LauncherCardInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher/AppAdviceCheck;->replaceCard(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/card/LauncherCardInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$replaceCard(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/AppAdviceCheck;->replaceCard(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setWorking$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher/AppAdviceCheck;->isWorking:Z

    return-void
.end method

.method public static final synthetic access$tryAdd2Plus2Card(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;IILjava/lang/String;Lb3/d;)Ljava/lang/Object;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/AppAdviceCheck;->tryAdd2Plus2Card(Lcom/android/launcher/Launcher;IILjava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryAdd2Plus2Card(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;ILb3/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/AppAdviceCheck;->tryAdd2Plus2Card(Lcom/android/launcher/Launcher;ILb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryAdd2Plus2CardOnScreen(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck;->tryAdd2Plus2CardOnScreen(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryAddAdviceCard(Lcom/android/launcher/Launcher;ZLb3/d;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck;->tryAddAdviceCard(Lcom/android/launcher/Launcher;ZLb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryAddCardOnLastScreen(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck;->tryAddCardOnLastScreen(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryAddCardOnScreen(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;IILjava/lang/String;Lb3/d;)Ljava/lang/Object;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/AppAdviceCheck;->tryAddCardOnScreen(Lcom/android/launcher/Launcher;IILjava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryAddCardOnScreen(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;ILb3/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/AppAdviceCheck;->tryAddCardOnScreen(Lcom/android/launcher/Launcher;ILb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryReplaceCard(Lcom/android/launcher/AppAdviceCheck;Lcom/android/launcher/Launcher;Ljava/util/List;Lb3/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/AppAdviceCheck;->tryReplaceCard(Lcom/android/launcher/Launcher;Ljava/util/List;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final appAdviceExistInDataModel()Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v2, v1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, v2}, Lcom/android/launcher/AppAdviceCheck;->isAppAdviceCard(I)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appAdviceExistInDataModel cardInfo=("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppAdviceCheck"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_40
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/AppAdviceCheck;->innerTryAddAdviceCard$lambda-2(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private final buildPendingCardInfo(I)Lcom/android/launcher3/PendingAddItemInfo;
    .registers 3

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    new-instance p1, Lcom/android/launcher3/card/PendingAddCardInfo;

    const/16 v0, -0x69

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/card/PendingAddCardInfo;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;I)V

    const/16 p0, -0x64

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return-object p1
.end method

.method public static synthetic c(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lkotlin/jvm/functions/Function2;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/AppAdviceCheck;->replaceWidget$lambda-6(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final copyWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/content/Context;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 5

    new-instance v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>()V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const-string v1, "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeatherSingle"

    invoke-direct {p0, v1, p2}, Lcom/android/launcher/AppAdviceCheck;->createAppWidgetId(Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    iput-object p0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return-object v0
.end method

.method private final createAppWidgetId(Ljava/lang/String;Landroid/content/Context;)I
    .registers 4

    new-instance p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {p0, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p2}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addGlobalSearchAppwidgetToDB: appWidgetId change from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tobe NO_ID"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppAdviceCheck"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :cond_3a
    return v0
.end method

.method public static final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fd"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "AppAdviceCheck"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_28

    move v1, v3

    goto :goto_29

    :cond_28
    move v1, v4

    :goto_29
    xor-int/2addr v1, v3

    if-eqz v1, :cond_2f

    aget-object v1, p2, v4

    goto :goto_31

    :cond_2f
    const-string v1, ""

    :goto_31
    const-string v5, "adviseCheck"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto/16 :goto_b9

    :cond_3b
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    sget-object v5, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v6

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v7

    invoke-virtual {v5}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v5

    if-nez v6, :cond_54

    if-nez v7, :cond_54

    if-nez v5, :cond_54

    if-nez v1, :cond_54

    goto :goto_55

    :cond_54
    move v3, v4

    :goto_55
    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isOPPODevice:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " isExp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isTablet="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFlipDevice="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFoldScreen="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isPhoneCn="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isOppoDevice="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isAllowAdd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0}, Lcom/android/launcher/AppAdviceCheck;->isAllowAdd()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/folder/big/BigFolderUtil;->dump(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_b9
    return-void
.end method

.method public static final finishBind()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v1, Lcom/android/launcher/AppAdviceCheck;->mAddCardToLastScreenRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_20

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/AppAdviceCheck;->mAddCardToLastScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/AppAdviceCheck;->mAddCardToLastScreenRunnable:Ljava/lang/Runnable;

    const-string v0, "AppAdviceCheck"

    const-string/jumbo v1, "tryAddAppAdviceCard post tryAddCardOnScreen"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private final get2Plus2AdviceCardInfo(Landroid/content/Context;I)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 7

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "(card_type = %s) and appWidgetProvider = \"%s\" and screen>=%s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "get2Plus2AdviceCardInfo sel="

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppAdviceCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/AppAdviceCheck;->getAppwidgetInfoFromDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getAdviceCardInfoFromDB(Landroid/content/Context;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 6

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    aput-object v3, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(card_type = %s or  card_type = %s) and appWidgetProvider = \"%s\""

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher/AppAdviceCheck;->getAppwidgetInfoFromDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getAdviceCardInfoFromDB(Landroid/content/Context;IIII)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 9

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    const/4 p2, 0x4

    const-string p3, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    aput-object p3, v1, p2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "card_type = %s and spanX =%s and spanY=%s and screen=%s and appWidgetProvider = \"%s\""

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "format(format, *args)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/AppAdviceCheck;->getAppwidgetInfoFromDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getAdviceCardInfoFromLastScreen(Landroid/content/Context;I)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 7

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "(card_type = %s) and appWidgetProvider = \"%s\" and screen>=%s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdviceCardInfoFromLastScreen sel="

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppAdviceCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/AppAdviceCheck;->getAppwidgetInfoFromDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getAdviceCardInfoFromScreen(Landroid/content/Context;I)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 7

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "(card_type = %s) and appWidgetProvider = \"%s\" and screen=%s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getAdviceCardInfoFromScreen sel="

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppAdviceCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/AppAdviceCheck;->getAppwidgetInfoFromDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getAppwidgetInfoFromDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 18

    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "CONTENT_URI"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "_id"

    const-string v4, "appWidgetId"

    const-string/jumbo v5, "screen"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string/jumbo v8, "spanX"

    const-string/jumbo v9, "spanY"

    const-string v10, "itemType"

    const-string v11, "container"

    const-string v12, "card_type"

    const-string v13, "appWidgetProvider"

    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_31
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "appWidgetId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "screen"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cellX"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "cellY"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "spanX"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "spanY"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "itemType"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "container"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "card_type"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "appWidgetProvider"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_d1

    new-instance v12, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {v12}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;-><init>()V

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "c.getString(indexProvider)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v12, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;
    :try_end_cd
    .catchall {:try_start_31 .. :try_end_cd} :catchall_d5

    invoke-static {v1, v13}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v12

    :cond_d1
    invoke-static {v1, v13}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v13

    :catchall_d5
    move-exception v0

    move-object v2, v0

    :try_start_d7
    throw v2
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d8

    :catchall_d8
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final getOldAppAdviceInfo(Lcom/android/launcher/Launcher;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/a;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-object p0
.end method

.method private static final getOldAppAdviceInfo$lambda-5(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    const-string v0, "$addviceCardViews"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    check-cast p1, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher/AppAdviceCheck;->isOldAppAdviceCrad(Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result p1

    if-eqz p1, :cond_19

    if-nez p2, :cond_16

    goto :goto_19

    :cond_16
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method private final getWeatherWidgetInfoFromDB(Landroid/content/Context;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 7

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->SEL_WEATHER:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeatherVertical"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "screen asc"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher/AppAdviceCheck;->getAppwidgetInfoFromDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getXiaobuAdviceInfoFromDB(Landroid/content/Context;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .registers 6

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0xd3ecf26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "card_type = \"%s\""

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "screen asc"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher/AppAdviceCheck;->getAppwidgetInfoFromDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method private final hasCheck()Z
    .registers 3

    sget-object p0, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "app_advice_check"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static final innerTryAddAdviceCard(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 19
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;

    iget v3, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;

    invoke-direct {v2, v1}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;-><init>(Lb3/d;)V

    :goto_1c
    iget-object v1, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->result:Ljava/lang/Object;

    sget-object v3, Lc3/a;->a:Lc3/a;

    iget v4, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->label:I

    const-string/jumbo v5, "tryAddAppAdviceCard fail "

    const-string/jumbo v6, "tryAddAppAdviceCard fail"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, "AppAdviceCheck"

    if-eqz v4, :cond_59

    if-eq v4, v9, :cond_51

    if-eq v4, v8, :cond_48

    if-ne v4, v7, :cond_40

    :try_start_35
    invoke-static {v1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_38} :catch_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_38} :catch_3a

    goto/16 :goto_1a3

    :catch_3a
    move-exception v0

    goto/16 :goto_17e

    :catch_3d
    move-exception v0

    goto/16 :goto_191

    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    iget-object v0, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    :try_start_4c
    invoke-static {v1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_4f} :catch_3a

    goto/16 :goto_168

    :cond_51
    iget-object v0, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :try_start_55
    invoke-static {v1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_58
    .catch Ljava/lang/IllegalStateException; {:try_start_55 .. :try_end_58} :catch_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_58} :catch_3a

    goto :goto_7d

    :cond_59
    invoke-static {v1}, Lq/d;->p(Ljava/lang/Object;)V

    :try_start_5c
    sget-object v1, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    const-string/jumbo v4, "tryAddAppAdviceCard innerTryAddAdviceCard"

    invoke-static {v10, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/android/launcher/AppAdviceCheck;->getOldAppAdviceInfo(Lcom/android/launcher/Launcher;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v9

    if-eqz v11, :cond_da

    sput v9, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    iput-object v4, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->L$0:Ljava/lang/Object;

    iput v9, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->label:I

    invoke-direct {v1, v0, v4, v2}, Lcom/android/launcher/AppAdviceCheck;->tryReplaceCard(Lcom/android/launcher/Launcher;Ljava/util/List;Lb3/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7c

    return-object v3

    :cond_7c
    move-object v0, v4

    :goto_7d
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_89
    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v2, :cond_89

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v2}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    if-nez v2, :cond_a3

    goto :goto_bc

    :cond_a3
    sget-object v3, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    sget-object v12, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v13, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v14, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v15, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    move-object v11, v3

    move/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/android/launcher/AppAdviceCheck;->getAdviceCardInfoFromDB(Landroid/content/Context;IIII)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/launcher/AppAdviceCheck;->onReInstallCallback(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :goto_bc
    const-string/jumbo v2, "tryAddAppAdviceCard innerTryAddAdviceCard "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    :cond_c7
    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    invoke-direct {v0, v9}, Lcom/android/launcher/AppAdviceCheck;->saveToSp(Z)V

    goto :goto_d7

    :cond_cd
    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    sget v1, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    const-string/jumbo v2, "reinstall old advice card fail"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onFail(ILjava/lang/String;)V

    :goto_d7
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_da
    invoke-direct {v1, v0}, Lcom/android/launcher/AppAdviceCheck;->getAdviceCardInfoFromDB(Landroid/content/Context;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v4

    if-eqz v4, :cond_fa

    const/4 v0, 0x4

    sput v0, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    const-string/jumbo v0, "tryAddAppAdviceCard exist adviceCardInfo="

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    sget v2, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onSuccess(ILcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-direct {v1, v9}, Lcom/android/launcher/AppAdviceCheck;->saveToSp(Z)V

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_fa
    invoke-direct {v1, v0}, Lcom/android/launcher/AppAdviceCheck;->getXiaobuAdviceInfoFromDB(Landroid/content/Context;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v4

    if-eqz v4, :cond_11a

    const/4 v0, 0x6

    sput v0, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    const-string/jumbo v0, "xiaobuAdviceContainer exist xiaobuAdviceInfo="

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    sget v2, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onSuccess(ILcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-direct {v1, v9}, Lcom/android/launcher/AppAdviceCheck;->saveToSp(Z)V

    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0

    :cond_11a
    invoke-direct {v1, v0}, Lcom/android/launcher/AppAdviceCheck;->getWeatherWidgetInfoFromDB(Landroid/content/Context;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v4

    const-string/jumbo v9, "tryAddAppAdviceCard oldWidgetInfo="

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_145

    sput v8, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    invoke-direct {v1, v4, v0}, Lcom/android/launcher/AppAdviceCheck;->copyWidgetInfo(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/content/Context;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object v2

    const-string/jumbo v3, "tryAddAppAdviceCard replaceWidget newWidgetInfo="

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.coloros.alarmclock/com.coloros.widget.smallweather.OppoWeatherVertical"

    new-instance v7, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;

    invoke-direct {v7, v0, v4, v2}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$3;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-direct {v1, v3, v2, v7}, Lcom/android/launcher/AppAdviceCheck;->replaceWidget(Ljava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lkotlin/jvm/functions/Function2;)V

    goto :goto_1a3

    :cond_145
    const/4 v4, 0x5

    sput v4, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v4

    if-eqz v4, :cond_15d

    new-instance v1, Lcom/android/launcher/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher/b;-><init>(Lcom/android/launcher/Launcher;I)V

    sput-object v1, Lcom/android/launcher/AppAdviceCheck;->mAddCardToLastScreenRunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "tryAddAppAdviceCard delay tryAddCardOnScreen"

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a3

    :cond_15d
    iput-object v0, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->L$0:Ljava/lang/Object;

    iput v8, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->label:I

    invoke-direct {v1, v0, v2}, Lcom/android/launcher/AppAdviceCheck;->tryAdd2Plus2CardOnScreen(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_168

    return-object v3

    :cond_168
    :goto_168
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1a3

    sget-object v1, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->L$0:Ljava/lang/Object;

    iput v7, v2, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$1;->label:I

    invoke-direct {v1, v0, v2}, Lcom/android/launcher/AppAdviceCheck;->tryAddCardOnLastScreen(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17b
    .catch Ljava/lang/IllegalStateException; {:try_start_5c .. :try_end_17b} :catch_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_17b} :catch_3a

    if-ne v0, v3, :cond_1a3

    return-object v3

    :goto_17e
    invoke-static {v10, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    sget v2, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onFail(ILjava/lang/String;)V

    goto :goto_1a3

    :goto_191
    invoke-static {v10, v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    sget v2, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onFail(ILjava/lang/String;)V

    :cond_1a3
    :goto_1a3
    sget-object v0, Ly2/p;->a:Ly2/p;

    return-object v0
.end method

.method private static final innerTryAddAdviceCard$lambda-2(Lcom/android/launcher/Launcher;)V
    .registers 8

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_20

    :cond_c
    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_20

    :cond_13
    const/4 v2, 0x0

    new-instance v4, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/launcher/AppAdviceCheck$innerTryAddAdviceCard$4$1;-><init>(Lcom/android/launcher/Launcher;Lb3/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    :goto_20
    return-void
.end method

.method private final isAllowAdd()Z
    .registers 4

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isOPPODevice:Z

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-nez v1, :cond_10

    if-eqz v2, :cond_16

    :cond_10
    if-nez v0, :cond_16

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private final isNewCardConfig()Z
    .registers 8

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "AppAdviceCheck"

    if-eqz v0, :cond_65

    if-nez v1, :cond_1f

    goto :goto_65

    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_45

    const/4 p0, 0x1

    return p0

    :cond_45
    const-string/jumbo p0, "tryAddAppAdviceCard providername("

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") error"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    invoke-virtual {v0, v3, p0}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onFail(ILjava/lang/String;)V

    return v2

    :cond_65
    :goto_65
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigMapSize()I

    move-result p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tryAddAppAdviceCard cardSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " configInfo22="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " configInfo42="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    invoke-virtual {v0, v3, p0}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onFail(ILjava/lang/String;)V

    return v2
.end method

.method private final isOldAppAdviceCrad(Lcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 2

    if-eqz p1, :cond_17

    iget-object p0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mProviderName:Landroid/content/ComponentName;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_b
    const-string p0, ""

    :goto_d
    const-string p1, "com.heytap.speechassist/com.heytap.speechassist.home.skillmarket.receiver.BreenoCardWidgetProvider"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private final isSpan2plus2(Lcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 3

    if-eqz p1, :cond_d

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private final isSpan4plus2(Lcom/android/launcher3/card/LauncherCardInfo;)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v2, 0x3

    if-gt v2, v1, :cond_e

    const/4 v2, 0x5

    if-gt v1, v2, :cond_e

    move v1, p0

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    if-eqz v1, :cond_17

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_17

    goto :goto_18

    :cond_17
    move p0, v0

    :goto_18
    return p0
.end method

.method private final onReInstallCallback(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_56

    invoke-direct {p0}, Lcom/android/launcher/AppAdviceCheck;->appAdviceExistInDataModel()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    if-eqz p1, :cond_39

    invoke-static {p1}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->convertFromCard(Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REINSTALLTYPE_REPLACE_OLD_CARD widgetInfo=null,appAdviceCardInfo!=null,newWidgetInfo=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppAdviceCheck"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/launcher/AppAdviceCheck;->saveToSp(Z)V

    sget-object p0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    sget v0, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    const-string/jumbo v1, "newWidgetInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onSuccess(ILcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    goto :goto_60

    :cond_39
    sget-object p0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    sget p1, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    const-string/jumbo v0, "reInstallType="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " query adviceCardInfoFromScreen is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onFail(ILjava/lang/String;)V

    goto :goto_60

    :cond_56
    invoke-direct {p0, v0}, Lcom/android/launcher/AppAdviceCheck;->saveToSp(Z)V

    sget-object p0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    sget v0, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onSuccess(ILcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    :goto_60
    return-void
.end method

.method private final replaceCard(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/card/LauncherCardInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "I",
            "Ljava/lang/String;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lq3/q0;->a:Lq3/b0;

    sget-object p0, Lv3/q;->a:Lq3/r1;

    new-instance v7, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/AppAdviceCheck$replaceCard$2;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;Landroid/view/View;ILjava/lang/String;Lb3/d;)V

    invoke-static {p0, v7, p6}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_19

    return-object p0

    :cond_19
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private final replaceCard(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "I",
            "Ljava/lang/String;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lq3/q0;->a:Lq3/b0;

    sget-object p0, Lv3/q;->a:Lq3/r1;

    new-instance v6, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AppAdviceCheck$replaceCard$4;-><init>(Lcom/android/launcher3/model/data/ItemInfo;ILjava/lang/String;Lcom/android/launcher/Launcher;Lb3/d;)V

    invoke-static {p0, v6, p5}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_18

    return-object p0

    :cond_18
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private final replaceWidget(Ljava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lkotlin/jvm/functions/Function2;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    const-string v0, "AppAdviceCheck"

    if-nez p0, :cond_1a

    const-string/jumbo p0, "replaceWidgetInfo, appState is null! provider = "

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p1, "appState is null"

    invoke-interface {p3, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.OplusLauncherModel"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-nez v1, :cond_38

    const-string/jumbo p0, "replaceWidgetInfo: launcher is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p1, "launcher is null"

    invoke-interface {p3, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_38
    new-instance v0, Lcom/android/launcher/AppAdviceCheck$replaceWidget$1;

    invoke-direct {v0, p2}, Lcom/android/launcher/AppAdviceCheck$replaceWidget$1;-><init>(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v2

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/launcher/c;-><init>(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final replaceWidget$lambda-6(Lcom/android/launcher3/OplusLauncherModel;Ljava/lang/String;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Lkotlin/jvm/functions/Function2;)V
    .registers 12

    const-string v0, "AppAdviceCheck"

    const-string/jumbo v1, "replaceWidgetInfo: failed"

    const-string v2, "$launcherModel"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$providerName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$newWidgetInfo"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$callback"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_19
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    if-eqz p0, :cond_48

    array-length v2, p0

    if-lez v2, :cond_48

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_25
    if-ge v4, v2, :cond_3f

    aget-object v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v5, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppWidgetRemove(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f

    new-instance v6, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v6}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/IntArray;->add(I)V

    invoke-interface {v5, v6, p2, v3}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAppWidgetAdd(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Z)Z

    goto :goto_25

    :cond_3f
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo p1, "ok"

    invoke-interface {p3, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_48
    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_50} :catch_51

    goto :goto_65

    :catch_51
    move-exception p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "replaceWidgetInfo: failed "

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_65
    return-void
.end method

.method private final saveToSp(Z)V
    .registers 3

    sget-object p0, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "app_advice_check"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher/AppAdviceCheck;->isWorking:Z

    return-void
.end method

.method private final tryAdd2Plus2Card(Lcom/android/launcher/Launcher;IILjava/lang/String;Lb3/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "II",
            "Ljava/lang/String;",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lq3/q0;->a:Lq3/b0;

    sget-object p0, Lv3/q;->a:Lq3/r1;

    new-instance v6, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p3

    move v2, p2

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2Card$3;-><init>(IILjava/lang/String;Lcom/android/launcher/Launcher;Lb3/d;)V

    invoke-static {p0, v6, p5}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final tryAdd2Plus2Card(Lcom/android/launcher/Launcher;ILb3/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "I",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 v3, 0x53

    const-string v4, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AppAdviceCheck;->tryAdd2Plus2Card(Lcom/android/launcher/Launcher;IILjava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final tryAdd2Plus2CardOnScreen(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;

    iget v1, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;-><init>(Lcom/android/launcher/AppAdviceCheck;Lb3/d;)V

    :goto_18
    iget-object p2, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->result:Ljava/lang/Object;

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_3a

    if-ne v2, v3, :cond_32

    iget-boolean p0, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->Z$0:Z

    iget p1, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->I$0:I

    iget-object v0, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/AppAdviceCheck;

    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_76

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    iget p0, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->I$0:I

    iget-object p1, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher/AppAdviceCheck;

    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    move-object v6, p1

    move p1, p0

    move-object p0, v6

    goto :goto_5b

    :cond_47
    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    const/4 p2, 0x0

    iput-object p0, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->I$0:I

    iput v4, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/AppAdviceCheck;->tryAdd2Plus2Card(Lcom/android/launcher/Launcher;ILb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_58

    return-object v1

    :cond_58
    move v6, p2

    move-object p2, p1

    move p1, v6

    :goto_5b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_83

    const-wide/16 v4, 0x1f4

    iput-object p0, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->I$0:I

    iput-boolean p2, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->Z$0:Z

    iput v3, v0, Lcom/android/launcher/AppAdviceCheck$tryAdd2Plus2CardOnScreen$1;->label:I

    invoke-static {v4, v5, v0}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_74

    return-object v1

    :cond_74
    move-object v0, p0

    move p0, p2

    :goto_76
    sget-object p2, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p2, p1}, Lcom/android/launcher/AppAdviceCheck;->get2Plus2AdviceCardInfo(Landroid/content/Context;I)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/launcher/AppAdviceCheck;->onReInstallCallback(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move p2, p0

    :cond_83
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final tryAddAdviceCard(Lcom/android/launcher/Launcher;ZLb3/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Z",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    invoke-direct {v0}, Lcom/android/launcher/AppAdviceCheck;->isAllowAdd()Z

    move-result v1

    if-nez v1, :cond_14

    sget-object p0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    const/4 p1, -0x1

    const-string/jumbo p2, "tryAddAppAdviceCard isAllowAdd=false"

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onFail(ILjava/lang/String;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "AppAdviceCheck"

    if-eqz v1, :cond_28

    const-string/jumbo p0, "tryAddAppAdviceCard isWorkspaceLoading"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/launcher/AppAdviceCheck;->isWorking:Z

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_28
    if-nez p1, :cond_4a

    invoke-direct {v0}, Lcom/android/launcher/AppAdviceCheck;->hasCheck()Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string/jumbo p0, "tryAddAppAdviceCard hasCheck true"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/launcher/AppAdviceCheck;->isWorking:Z

    sget p0, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    const/4 p1, -0x2

    if-eq p0, p1, :cond_47

    sput p1, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    sget-object p0, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    const/4 p2, 0x2

    const-string v0, "has installed already"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onExceptionalCase(IILjava/lang/String;)V

    :cond_47
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_4a
    invoke-direct {v0}, Lcom/android/launcher/AppAdviceCheck;->isNewCardConfig()Z

    move-result p1

    if-nez p1, :cond_59

    const-string/jumbo p0, "tryAddAppAdviceCard isNewCardConfig false"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0

    :cond_59
    invoke-static {p0, p2}, Lcom/android/launcher/AppAdviceCheck;->innerTryAddAdviceCard(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lc3/a;->a:Lc3/a;

    if-ne p0, p1, :cond_62

    return-object p0

    :cond_62
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public static final tryAddAppAdviceCard()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/AppAdviceCheck;->tryAddAppAdviceCard(Z)V

    return-void
.end method

.method private final tryAddCardOnLastScreen(Lcom/android/launcher/Launcher;Lb3/d;)Ljava/lang/Object;
    .registers 10
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

    instance-of v0, p2, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;

    iget v1, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;-><init>(Lcom/android/launcher/AppAdviceCheck;Lb3/d;)V

    :goto_18
    iget-object p2, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->result:Ljava/lang/Object;

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_42

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    iget p0, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->I$0:I

    iget-object p1, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher/AppAdviceCheck;

    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_76

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    iget p0, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->I$0:I

    iget-object p1, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher/AppAdviceCheck;

    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_42
    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v4

    iput-object p0, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->I$0:I

    iput v4, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/AppAdviceCheck;->tryAddCardOnScreen(Lcom/android/launcher/Launcher;ILb3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5b

    return-object v1

    :cond_5b
    move-object v6, p1

    move-object p1, p0

    move p0, p2

    move-object p2, v6

    :goto_5f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_83

    const-wide/16 v4, 0x1f4

    iput-object p1, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->L$0:Ljava/lang/Object;

    iput p0, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->I$0:I

    iput v3, v0, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnLastScreen$1;->label:I

    invoke-static {v4, v5, v0}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_76

    return-object v1

    :cond_76
    :goto_76
    sget-object p2, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p2, p0}, Lcom/android/launcher/AppAdviceCheck;->getAdviceCardInfoFromLastScreen(Landroid/content/Context;I)Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/launcher/AppAdviceCheck;->onReInstallCallback(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    goto :goto_aa

    :cond_83
    sget-object p1, Lcom/android/launcher/AppAdviceCheck;->mReInstallCallback:Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;

    sget v0, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    const-string/jumbo v1, "reInstallType="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/launcher/AppAdviceCheck;->reInstallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tryAddCardOnScreen addOk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " screenId="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/AppAdviceCheck$mReInstallCallback$1;->onFail(ILjava/lang/String;)V

    :goto_aa
    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method private final tryAddCardOnScreen(Lcom/android/launcher/Launcher;IILjava/lang/String;Lb3/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "II",
            "Ljava/lang/String;",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lq3/q0;->a:Lq3/b0;

    sget-object p0, Lv3/q;->a:Lq3/r1;

    new-instance v6, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnScreen$3;

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p3

    move v2, p2

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AppAdviceCheck$tryAddCardOnScreen$3;-><init>(IILjava/lang/String;Lcom/android/launcher/Launcher;Lb3/d;)V

    invoke-static {p0, v6, p5}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final tryAddCardOnScreen(Lcom/android/launcher/Launcher;ILb3/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "I",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 v3, 0x52

    const-string v4, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/AppAdviceCheck;->tryAddCardOnScreen(Lcom/android/launcher/Launcher;IILjava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final tryReplaceCard(Lcom/android/launcher/Launcher;Ljava/util/List;Lb3/d;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;

    iget v1, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;

    invoke-direct {v0, p0, p3}, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;-><init>(Lcom/android/launcher/AppAdviceCheck;Lb3/d;)V

    :goto_18
    iget-object p0, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->result:Ljava/lang/Object;

    sget-object p3, Lc3/a;->a:Lc3/a;

    iget v1, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    if-ne v1, v2, :cond_35

    iget p1, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->I$0:I

    iget-object p2, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->L$2:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v1, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_8a

    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    invoke-static {p0}, Lq/d;->p(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v10, p1

    move p1, p0

    move-object p0, v10

    :goto_50
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.card.LauncherCardInfo"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Lcom/android/launcher3/card/LauncherCardInfo;

    sget-object v3, Lcom/android/launcher/AppAdviceCheck;->INSTANCE:Lcom/android/launcher/AppAdviceCheck;

    invoke-direct {v3, v6}, Lcom/android/launcher/AppAdviceCheck;->isOldAppAdviceCrad(Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result v4

    if-eqz v4, :cond_91

    iget v7, v6, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iput-object p0, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->L$0:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->L$2:Ljava/lang/Object;

    iput p1, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->I$0:I

    iput v2, v0, Lcom/android/launcher/AppAdviceCheck$tryReplaceCard$1;->label:I

    const-string v8, "com.coloros.assistantscreen/com.oplus.assistantscreen.card.quickapp.provider.QuickAppWidgetProvider"

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher/AppAdviceCheck;->replaceCard(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/card/LauncherCardInfo;ILjava/lang/String;Lb3/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p3, :cond_89

    return-object p3

    :cond_89
    move-object v3, p0

    :goto_8a
    iget p0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p0, v2

    iput p0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object p0, v3

    goto :goto_50

    :cond_91
    const-string v3, "AppAdviceCheck"

    const-string/jumbo v4, "tryReplaceCard fail"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :cond_9a
    if-lez p1, :cond_a1

    iget p0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p0, p1, :cond_a1

    goto :goto_a2

    :cond_a1
    const/4 v2, 0x0

    :goto_a2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isAppAdviceCard(I)Z
    .registers 2

    const/16 p0, 0x53

    if-eq p1, p0, :cond_b

    const/16 p0, 0x52

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public final isAppAdviceCard4plus2(I)Z
    .registers 2

    const/16 p0, 0x52

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final tryAddAppAdviceCard(Z)V
    .registers 9

    sget-object p0, Lcom/android/launcher/AppAdviceCheck;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v0, "AppAdviceCheck"

    if-nez p0, :cond_d

    const-string/jumbo p0, "tryAddAppAdviceCard launcher is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string/jumbo p0, "tryAddAppAdviceCard not surpport card"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "tryAddAppAdviceCard not surpport userId="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_33
    sget-boolean v1, Lcom/android/launcher/AppAdviceCheck;->isWorking:Z

    if-eqz v1, :cond_3e

    const-string/jumbo p0, "tryAddAppAdviceCard isWorking ..."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/AppAdviceCheck;->isWorking:Z

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-nez v0, :cond_48

    goto :goto_5c

    :cond_48
    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-nez v1, :cond_4f

    goto :goto_5c

    :cond_4f
    const/4 v2, 0x0

    new-instance v4, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/android/launcher/AppAdviceCheck$tryAddAppAdviceCard$1;-><init>(Lcom/android/launcher/Launcher;ZLb3/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    :goto_5c
    return-void
.end method
