.class public final Lcom/oplus/card/manager/data/CardIdDBConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COL_CARD_ID:Ljava/lang/String; = "card_id"

.field public static final COL_CARD_TYPE:Ljava/lang/String; = "card_type"

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS card_id (card_type INTEGER, card_id INTEGER, PRIMARY KEY(card_type, card_id))"

.field public static final DATABASE_NAME:Ljava/lang/String; = "card_id.db"

.field public static final DELETE_WHERE_CLAUSE:Ljava/lang/String; = "card_type=? AND card_id=?"

.field public static final INSTANCE:Lcom/oplus/card/manager/data/CardIdDBConfig;

.field public static final TABLE_NAME:Ljava/lang/String; = "card_id"

.field public static final VERSION:I = 0x1

.field public static final WHERE_CLAUSE_WITH_TYPE:Ljava/lang/String; = "card_type=?"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/manager/data/CardIdDBConfig;

    invoke-direct {v0}, Lcom/oplus/card/manager/data/CardIdDBConfig;-><init>()V

    sput-object v0, Lcom/oplus/card/manager/data/CardIdDBConfig;->INSTANCE:Lcom/oplus/card/manager/data/CardIdDBConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
