.class public abstract enum Lcom/android/launcher/layout/ComponentLayoutProvider;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;,
        Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider;,
        Lcom/android/launcher/layout/ComponentLayoutProvider$CompanyLayoutProvider;,
        Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider;,
        Lcom/android/launcher/layout/ComponentLayoutProvider$BigballLayoutProvider;,
        Lcom/android/launcher/layout/ComponentLayoutProvider$ProductLayoutProvider;,
        Lcom/android/launcher/layout/ComponentLayoutProvider$StockLayoutProvider;,
        Lcom/android/launcher/layout/ComponentLayoutProvider$EngineeringLayoutProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher/layout/ComponentLayoutProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher/layout/ComponentLayoutProvider;

.field public static final enum AppFeatureLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

.field public static final enum BigballLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

.field public static final enum CarrierLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

.field public static final Companion:Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;

.field public static final enum CompanyLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

.field private static final DELAY_COPY_LAYOUT_XML:J = 0x7530L

.field public static final enum EngineeringLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

.field private static final FACTORY_LAYOUT_FILENAME_PATTERN:Ljava/lang/String; = "default_workspace_factory_%dx%d.xml"

.field private static final NEW_LAYOUT_FILENAME:Ljava/lang/String; = "default_workspace_new_layout.xml"

.field private static final NORMAL_LAYOUT_FILENAME:Ljava/lang/String; = "default_workspace.xml"

.field private static final PACMAN_LAYOUT_FILENAME:Ljava/lang/String; = "default_workspace_pacman.xml"

.field private static final PATH_ETC:Ljava/lang/String; = "/etc/launcher/"

.field public static final enum ProductLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

.field private static final SALE_LAYOUT_FILENAME:Ljava/lang/String; = "default_workspace_sale.xml"

.field private static final SIMPLE_LAYOUT_FILENAME:Ljava/lang/String; = "default_workspace_simple.xml"

.field private static final SIMPLE_LAYOUT_FILENAME_SPEED_DIAL_WIDGET:Ljava/lang/String; = "default_workspace_simple_speed_dial_widget.xml"

.field public static final enum StockLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

.field private static final TAG:Ljava/lang/String; = "ComponentLayoutProvider"


# direct methods
.method private static final synthetic $values()[Lcom/android/launcher/layout/ComponentLayoutProvider;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/launcher/layout/ComponentLayoutProvider;

    sget-object v1, Lcom/android/launcher/layout/ComponentLayoutProvider;->AppFeatureLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher/layout/ComponentLayoutProvider;->CompanyLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher/layout/ComponentLayoutProvider;->CarrierLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher/layout/ComponentLayoutProvider;->BigballLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher/layout/ComponentLayoutProvider;->ProductLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher/layout/ComponentLayoutProvider;->StockLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher/layout/ComponentLayoutProvider;->EngineeringLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider;

    const-string v1, "AppFeatureLayoutProvider"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/layout/ComponentLayoutProvider$AppFeatureLayoutProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->AppFeatureLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    new-instance v0, Lcom/android/launcher/layout/ComponentLayoutProvider$CompanyLayoutProvider;

    const-string v1, "CompanyLayoutProvider"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/layout/ComponentLayoutProvider$CompanyLayoutProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->CompanyLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    new-instance v0, Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider;

    const-string v1, "CarrierLayoutProvider"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/layout/ComponentLayoutProvider$CarrierLayoutProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->CarrierLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    new-instance v0, Lcom/android/launcher/layout/ComponentLayoutProvider$BigballLayoutProvider;

    const-string v1, "BigballLayoutProvider"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/layout/ComponentLayoutProvider$BigballLayoutProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->BigballLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    new-instance v0, Lcom/android/launcher/layout/ComponentLayoutProvider$ProductLayoutProvider;

    const-string v1, "ProductLayoutProvider"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/layout/ComponentLayoutProvider$ProductLayoutProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->ProductLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    new-instance v0, Lcom/android/launcher/layout/ComponentLayoutProvider$StockLayoutProvider;

    const-string v1, "StockLayoutProvider"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/layout/ComponentLayoutProvider$StockLayoutProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->StockLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    new-instance v0, Lcom/android/launcher/layout/ComponentLayoutProvider$EngineeringLayoutProvider;

    const-string v1, "EngineeringLayoutProvider"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/layout/ComponentLayoutProvider$EngineeringLayoutProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->EngineeringLayoutProvider:Lcom/android/launcher/layout/ComponentLayoutProvider;

    invoke-static {}, Lcom/android/launcher/layout/ComponentLayoutProvider;->$values()[Lcom/android/launcher/layout/ComponentLayoutProvider;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->$VALUES:[Lcom/android/launcher/layout/ComponentLayoutProvider;

    new-instance v0, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->Companion:Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/layout/ComponentLayoutProvider;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getLayoutLoader(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->Companion:Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher/layout/ComponentLayoutProvider$Companion;->getLayoutLoader(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher/layout/ComponentLayoutProvider;
    .registers 2

    const-class v0, Lcom/android/launcher/layout/ComponentLayoutProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/layout/ComponentLayoutProvider;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher/layout/ComponentLayoutProvider;
    .registers 1

    sget-object v0, Lcom/android/launcher/layout/ComponentLayoutProvider;->$VALUES:[Lcom/android/launcher/layout/ComponentLayoutProvider;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher/layout/ComponentLayoutProvider;

    return-object v0
.end method


# virtual methods
.method public final etcDirectory(Ljava/io/File;)Ljava/io/File;
    .registers 3

    new-instance p0, Ljava/io/File;

    const-string v0, "/etc/launcher/"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public abstract getLayoutDirectory()Ljava/io/File;
.end method
