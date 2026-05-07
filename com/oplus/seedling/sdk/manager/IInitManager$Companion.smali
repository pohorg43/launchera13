.class public final Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/manager/IInitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;

.field public static final FEATURE_INIT_SDK_WITH_USER_CONTEXT:I = 0x1

.field public static final FEATURE_PLUGIN_EXCHANGE_GIT_COMMIT_HASH:I = 0x2

.field public static final FEATURE_SDK_INTERNAL_INIT_CALLBACK:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
