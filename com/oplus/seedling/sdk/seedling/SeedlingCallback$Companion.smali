.class public final Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;

.field private static final TAG:Ljava/lang/String; = "SeedlingCallback"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
