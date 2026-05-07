.class public final Lcom/oplus/card/config/domain/model/CardConfigInfo$SUBSCRIBED$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/config/domain/model/CardConfigInfo$SUBSCRIBED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/card/config/domain/model/CardConfigInfo$SUBSCRIBED$Companion;

.field public static final DEFAULT_SUBSCRIBED_FALSE:I = 0x0

.field public static final DEFAULT_SUBSCRIBED_TRUE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$SUBSCRIBED$Companion;

    invoke-direct {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo$SUBSCRIBED$Companion;-><init>()V

    sput-object v0, Lcom/oplus/card/config/domain/model/CardConfigInfo$SUBSCRIBED$Companion;->$$INSTANCE:Lcom/oplus/card/config/domain/model/CardConfigInfo$SUBSCRIBED$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
