.class public final Lcom/android/launcher3/card/SmartEngineFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/SmartEngineFactory;

.field private static final TAG:Ljava/lang/String; = "SmartEngineFactory"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/SmartEngineFactory;

    invoke-direct {v0}, Lcom/android/launcher3/card/SmartEngineFactory;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/SmartEngineFactory;->INSTANCE:Lcom/android/launcher3/card/SmartEngineFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createEngine(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/helper/SmartEngine;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/android/launcher3/card/seed/SeedParams;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;)",
            "Lcom/oplus/card/helper/SmartEngine;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    sget-object v2, Lcom/android/launcher3/card/SmartEngineFactory;->INSTANCE:Lcom/android/launcher3/card/SmartEngineFactory;

    move-object v7, p1

    check-cast v7, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p1, v7, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {p1}, Lcom/android/launcher3/card/SmartEngineFactory;->getCategory(I)I

    move-result p1

    const-string v0, "createEngine, category = "

    const-string v3, "SmartEngineFactory"

    invoke-static {p1, v0, v3}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_54

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4f

    const/16 v0, 0x64

    if-eq p1, v0, :cond_37

    if-lez p1, :cond_73

    invoke-direct {v2, v7, p4, p2}, Lcom/android/launcher3/card/SmartEngineFactory;->createNormalCardEngine(Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)Lcom/oplus/card/helper/NormalSmartEngine;

    move-result-object p0

    goto :goto_4d

    :cond_37
    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    iget p2, v7, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p1, p2}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v4

    if-nez v4, :cond_46

    goto :goto_73

    :cond_46
    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/card/SmartEngineFactory;->createSeedCardEngine(Landroid/content/Context;Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/seed/SeedCardEngine;

    move-result-object p0

    :goto_4d
    move-object v1, p0

    goto :goto_73

    :cond_4f
    invoke-direct {v2, v7, p4, p2}, Lcom/android/launcher3/card/SmartEngineFactory;->createNormalCardEngine(Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)Lcom/oplus/card/helper/NormalSmartEngine;

    move-result-object v1

    goto :goto_73

    :cond_54
    invoke-direct {v2, p0, v7, p3, p4}, Lcom/android/launcher3/card/SmartEngineFactory;->createQuickAppCardEngine(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/helper/QuickAppSmartEngine;

    move-result-object v1

    goto :goto_73

    :cond_59
    instance-of p2, p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eqz p2, :cond_73

    sget-object v2, Lcom/android/launcher3/card/SmartEngineFactory;->INSTANCE:Lcom/android/launcher3/card/SmartEngineFactory;

    move-object v4, p1

    check-cast v4, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {v4}, Lcom/android/launcher3/card/LauncherCardInfo;->newFromCardConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v7

    const-string/jumbo p1, "newFromCardConfigInfo(info)"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/card/SmartEngineFactory;->createSeedCardEngine(Landroid/content/Context;Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/seed/SeedCardEngine;

    move-result-object v1

    :cond_73
    :goto_73
    return-object v1
.end method

.method private final createNormalCardEngine(Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)Lcom/oplus/card/helper/NormalSmartEngine;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/oplus/card/helper/NormalSmartEngine;"
        }
    .end annotation

    new-instance p0, Lcom/oplus/card/helper/NormalSmartEngine;

    const-string/jumbo v0, "null cannot be cast to non-null type com.oplus.card.helper.SmartEngineHelper.CardErrorCallback"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/card/helper/NormalSmartEngine;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;)V

    return-object p0
.end method

.method private final createQuickAppCardEngine(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/helper/QuickAppSmartEngine;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lcom/android/launcher3/card/seed/SeedParams;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;)",
            "Lcom/oplus/card/helper/QuickAppSmartEngine;"
        }
    .end annotation

    new-instance p0, Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/card/helper/QuickAppSmartEngine;-><init>(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method private final createSeedCardEngine(Landroid/content/Context;Lcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;Lcom/android/launcher3/card/LauncherCardInfo;)Lcom/android/launcher3/card/seed/SeedCardEngine;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            "Lcom/android/launcher3/card/seed/SeedParams;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            ")",
            "Lcom/android/launcher3/card/seed/SeedCardEngine;"
        }
    .end annotation

    if-nez p3, :cond_3

    const/4 p3, 0x0

    :cond_3
    if-nez p3, :cond_a

    new-instance p3, Lcom/android/launcher3/card/seed/SeedParams;

    invoke-direct {p3, p2}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    :cond_a
    new-instance p0, Lcom/android/launcher3/card/seed/SeedCardEngine;

    invoke-direct {p0, p1, p3, p5, p4}, Lcom/android/launcher3/card/seed/SeedCardEngine;-><init>(Landroid/content/Context;Lcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method public static final getCategory(I)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCategory()I

    move-result p0

    :goto_12
    return p0
.end method
