.class public final Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.oplus.fantasywindow.fantasywindowprovider"

.field private static final COMPACT_RATIO:Ljava/lang/String; = "compact_ratio"

.field private static final COMPATIBLE_RATIO_16_9:Ljava/lang/String; = "1.78"

.field private static final COMPATIBLE_RATIO_4_3:Ljava/lang/String; = "1.33"

.field private static final CONFIG:Ljava/lang/String; = "config"

.field public static final Companion:Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;

.field public static final FANTASY_OBSERVER_BINDER:Ljava/lang/String; = "fantasy_observer_binder"

.field public static final METHOD_FANTASY_GET_OBSERVER:Ljava/lang/String; = "method_fantasy_get_observer"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "CompactWindowDaoUtils"

.field private static final URI_STRING:Ljava/lang/String; = "content://com.oplus.fantasywindow.fantasywindowprovider/"

.field private static final projection:[Ljava/lang/String;

.field private static final selectArgsCompactWindow:[Ljava/lang/String;

.field private static final selectArgsMagicWindow:[Ljava/lang/String;

.field private static showRecentToolTips:Z = false

.field private static final sqlQueryStatement:Ljava/lang/String; = "use_function=? AND installed=?"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->Companion:Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils$Companion;

    const-string v0, "compactwindow"

    const-string v1, "1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->selectArgsCompactWindow:[Ljava/lang/String;

    const-string v0, "magicwindow"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->selectArgsMagicWindow:[Ljava/lang/String;

    const-string v0, "package_name"

    const-string v1, "config"

    const-string v2, "status"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->projection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getProjection$cp()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSelectArgsCompactWindow$cp()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->selectArgsCompactWindow:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSelectArgsMagicWindow$cp()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->selectArgsMagicWindow:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getShowRecentToolTips$cp()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->showRecentToolTips:Z

    return v0
.end method

.method public static final synthetic access$setShowRecentToolTips$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/quickstep/utils/CompatibleDataBaseUtils;->showRecentToolTips:Z

    return-void
.end method
