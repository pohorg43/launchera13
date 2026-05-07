.class public final Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/manager/domain/model/CardAction$ACTION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;

.field public static final CLICK:I = 0x1

.field public static final CONFIGURATION_LIST:I = 0x5

.field public static final EXPOSED_STATE:I = 0x3

.field public static final INVALIDATE:I = 0x4

.field public static final LIFE_CIRCLE:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;

    invoke-direct {v0}, Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;-><init>()V

    sput-object v0, Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;->$$INSTANCE:Lcom/oplus/card/manager/domain/model/CardAction$ACTION$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
