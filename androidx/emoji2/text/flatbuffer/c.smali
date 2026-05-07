.class public final synthetic Landroidx/emoji2/text/flatbuffer/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Landroidx/emoji2/text/flatbuffer/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/emoji2/text/flatbuffer/c;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/c;-><init>()V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/c;->a:Landroidx/emoji2/text/flatbuffer/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8Old;->a()Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;

    move-result-object p0

    return-object p0
.end method
