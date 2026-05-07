.class public final Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;

.field public static final ASSISTANT:I = 0x1

.field public static final LAUNCHER:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;-><init>()V

    sput-object v0, Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;->$$INSTANCE:Lcom/oplus/card/manager/domain/model/ChangeCardEvent$LOCATION$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
