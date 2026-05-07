.class public interface abstract annotation Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final CARD_CONFIG_ERROR:I = 0x7d6

.field public static final Companion:Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;

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

    sget-object v0, Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode;->Companion:Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode$Companion;

    return-void
.end method
