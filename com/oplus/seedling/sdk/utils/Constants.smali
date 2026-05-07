.class public final Lcom/oplus/seedling/sdk/utils/Constants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/utils/Constants$Size;,
        Lcom/oplus/seedling/sdk/utils/Constants$EntranceType;,
        Lcom/oplus/seedling/sdk/utils/Constants$EventCode;,
        Lcom/oplus/seedling/sdk/utils/Constants$ServiceType;,
        Lcom/oplus/seedling/sdk/utils/Constants$ServiceCategory;,
        Lcom/oplus/seedling/sdk/utils/Constants$ChannelType;,
        Lcom/oplus/seedling/sdk/utils/Constants$IntentCategory;,
        Lcom/oplus/seedling/sdk/utils/Constants$SeedlingType;,
        Lcom/oplus/seedling/sdk/utils/Constants$ErrorCode;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/Constants;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/Constants;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants;->INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
