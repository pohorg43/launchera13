.class public final Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;

.field public static final CARD_CONFIG_ERROR:I = 0x7d6

.field public static final HOST_USE_ERROR:I = 0x7d3

.field public static final INTERRUPT_BY_ENTRANCE:I = 0x7d7

.field public static final PLUGIN_COPY_ERROR:I = 0x3e8

.field public static final PLUGIN_COPY_SUCCESS:I = 0x3f4

.field public static final PLUGIN_FEATURE_NOT_SUPPORT:I = 0x3eb

.field public static final PLUGIN_NOT_NEED_UPDATE:I = 0x3f2

.field public static final PLUGIN_THROW_EXCE_ERROR:I = 0x3ea

.field public static final PLUGIN_UPDATE_SUCCESS:I = 0x3f3

.field public static final PLUGIN_VERIFY_ERROR:I = 0x3e9

.field public static final SERVICE_ID_ERROR:I = 0x7d4

.field public static final TASK_IS_CANCELED:I = 0x7d5

.field public static final UPK_COPY_ERROR:I = 0x7d1

.field public static final UPK_LOAD_ERROR:I = 0x7d2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
