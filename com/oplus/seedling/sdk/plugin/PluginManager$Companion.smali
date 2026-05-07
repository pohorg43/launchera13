.class public final Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/plugin/PluginManager;
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

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;
    .registers 1

    invoke-static {}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->access$getSInstance$delegate$cp()Ly2/e;

    move-result-object p0

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;

    return-object p0
.end method
