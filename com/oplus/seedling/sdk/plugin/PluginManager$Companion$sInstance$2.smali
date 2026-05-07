.class final Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/plugin/PluginManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/seedling/sdk/plugin/PluginManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/seedling/sdk/plugin/PluginManager;
    .registers 2

    new-instance p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;->invoke()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    return-object p0
.end method
