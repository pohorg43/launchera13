.class public final Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;
.super Lcom/oplus/quickstep/relay/data/RelayState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/relay/data/RelayState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnterRecent"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    invoke-direct {v0}, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    return-void
.end method

.method private constructor <init>()V
    .registers 12

    const-string v1, "enter recent"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/oplus/quickstep/relay/data/RelayState;-><init>(Ljava/lang/String;ZZZZZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
