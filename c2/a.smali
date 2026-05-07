.class public final synthetic Lc2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/NumberFormatException;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;I)V
    .registers 5

    iput p4, p0, Lc2/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lc2/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lc2/a;->d:Ljava/lang/NumberFormatException;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lc2/a;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Lc2/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lc2/a;->c:Ljava/lang/String;

    iget-object p0, p0, Lc2/a;->d:Ljava/lang/NumberFormatException;

    invoke-static {v0, v1, p0}, Lcom/oplus/statistics/storage/MemoryPreference;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_11
    iget-object v0, p0, Lc2/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lc2/a;->c:Ljava/lang/String;

    iget-object p0, p0, Lc2/a;->d:Ljava/lang/NumberFormatException;

    invoke-static {v0, v1, p0}, Lcom/oplus/statistics/storage/MemoryPreference;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/NumberFormatException;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
