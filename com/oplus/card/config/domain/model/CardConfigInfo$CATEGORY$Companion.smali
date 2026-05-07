.class public final Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;

.field public static final APP:I = 0x2

.field public static final CONTENT_OPERATION:I = 0x3

.field public static final INSTANT:I = 0x1

.field public static final SEED_CARD:I = 0x64

.field public static final SERVICE:I = 0x4

.field public static final TRANS_CARD:I = -0x1

.field public static final WIDGET_CARD:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;

    invoke-direct {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;-><init>()V

    sput-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;->$$INSTANCE:Lcom/oplus/card/config/domain/model/CardConfigInfo$CATEGORY$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
