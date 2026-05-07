.class public final Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver$PluginUpdate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginUpdate"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver$PluginUpdate;

.field public static final PLUGIN_NEED_UPDATE:I = 0x1

.field public static final PLUGIN_NOT_NEED_UPDATE:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver$PluginUpdate;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver$PluginUpdate;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver$PluginUpdate;->INSTANCE:Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver$PluginUpdate;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
