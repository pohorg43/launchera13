.class public final Lcom/oplus/seedling/sdk/plugin/Constants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;,
        Lcom/oplus/seedling/sdk/plugin/Constants$PluginClassField;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/Constants;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/plugin/Constants;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
