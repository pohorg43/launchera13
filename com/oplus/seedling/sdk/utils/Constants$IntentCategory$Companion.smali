.class public final Lcom/oplus/seedling/sdk/utils/Constants$IntentCategory$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants$IntentCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$IntentCategory$Companion;

.field public static final INTENT_FROM_CLOUD:I = 0x1

.field public static final INTENT_FROM_DT_USER_HABIT:I = 0x2

.field public static final INTENT_FROM_GUARANTEED:I = 0x3

.field public static final INTENT_FROM_RULE:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/utils/Constants$IntentCategory$Companion;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/Constants$IntentCategory$Companion;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$IntentCategory$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$IntentCategory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
