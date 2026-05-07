.class public final Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;

.field public static final FOUR_PLUS_FOUR:I = 0x3

.field public static final N_PLUS_FOUR:I = 0x4

.field public static final ONE_PLUS_FOUR:I = 0x5

.field public static final ONE_PLUS_TWO:I = 0x5

.field public static final TWO_PLUS_FOUR:I = 0x2

.field public static final TWO_PLUS_TWO:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;

    invoke-direct {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;-><init>()V

    sput-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;->$$INSTANCE:Lcom/oplus/card/config/domain/model/CardConfigInfo$SIZE$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
