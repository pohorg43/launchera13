.class public final Lcom/oplus/seedling/sdk/SeedlingSdk$InitStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitStatus"
.end annotation


# static fields
.field public static final INITED:I = 0x2

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk$InitStatus;

.field public static final NOT_INITED:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/SeedlingSdk$InitStatus;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk$InitStatus;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk$InitStatus;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk$InitStatus;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
