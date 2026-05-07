.class abstract Lcom/android/launcher/settings/LauncherIndexablesProvider$DependencyApp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/settings/LauncherIndexablesProvider$SearchDependency;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/settings/LauncherIndexablesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DependencyApp"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final enable(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/settings/LauncherIndexablesProvider$DependencyApp;->enableByApp(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public abstract enableByApp(Landroid/content/Context;)Z
.end method
