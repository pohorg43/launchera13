.class public final Lcom/oplus/seedling/sdk/plugin/Constants$PluginClassField;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/plugin/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginClassField"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginClassField;

.field public static final METHOD_GET_INSTANCE_SEEDLING_MANAGER:Ljava/lang/String; = "getInstance"

.field public static final PACKAGE_PATH_SEEDLING_MANAGER:Ljava/lang/String; = "com.oplus.seedling.framework.manager.SeedlingManager"

.field public static final PACKAGE_PATH_SEEDLING_SDK:Ljava/lang/String; = "com.oplus.seedling.framework.manager.SeedlingSdkInternal"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginClassField;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginClassField;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginClassField;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginClassField;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
