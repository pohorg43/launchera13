.class public Lcom/oplus/anim/parser/PathParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/parser/ValueParser<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/anim/parser/PathParser;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/anim/parser/PathParser;

    invoke-direct {v0}, Lcom/oplus/anim/parser/PathParser;-><init>()V

    sput-object v0, Lcom/oplus/anim/parser/PathParser;->INSTANCE:Lcom/oplus/anim/parser/PathParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/parser/PathParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
