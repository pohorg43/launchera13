.class public Lu1/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final synthetic a:I

.field public b:Landroid/content/Context;

.field public c:Landroid/net/Uri;

.field public d:Landroid/os/ParcelFileDescriptor;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    iput p2, p0, Lu1/a;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu1/a;->b:Landroid/content/Context;

    iput-object v0, p0, Lu1/a;->c:Landroid/net/Uri;

    iput-object v0, p0, Lu1/a;->d:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    iput-object p1, p0, Lu1/a;->b:Landroid/content/Context;

    return-void

    :cond_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu1/a;->b:Landroid/content/Context;

    iput-object v0, p0, Lu1/a;->c:Landroid/net/Uri;

    iput-object v0, p0, Lu1/a;->d:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    iput-object p1, p0, Lu1/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/JsonArray;)Z
    .registers 10

    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/stream/JsonWriter;

    const/4 v1, 0x0

    const-string v2, "JsonWriterHelper"

    if-nez v0, :cond_1c

    const-string p1, "appendJsonArrayToFile mJsonWriter is null, uri = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1c
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appendJsonArrayToFile, size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lt1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    :goto_35
    const-string v4, ", uri = "

    const/4 v5, 0x1

    if-ge v3, v0, :cond_6d

    :try_start_3a
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonObject;

    if-eqz v6, :cond_4e

    iget-object v7, p0, Lu1/a;->e:Ljava/lang/Object;

    check-cast v7, Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    goto :goto_6a

    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appendJsonArrayToFile jsonObject is null, i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_6d
    iget-object p1, p0, Lu1/a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->flush()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_74} :catch_75

    goto :goto_93

    :catch_75
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appendJsonArrayToFile e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    :goto_93
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public b()V
    .registers 9

    iget v0, p0, Lu1/a;->a:I

    const-string v1, "close mJsonWriter Exception, e = "

    const-string v2, "close mPFD Exception, e = "

    const-string v3, "close endArray, e = "

    const/4 v4, 0x0

    const-string v5, ", uri = "

    packed-switch v0, :pswitch_data_10c

    goto/16 :goto_8a

    :pswitch_10  #0x0
    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/google/gson/stream/JsonReader;

    const-string v7, "JsonReaderHelper"

    if-eqz v6, :cond_3a

    :try_start_19
    check-cast v0, Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endArray()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_3a

    :catch_1f
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lu1/a;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5d

    :try_start_3e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_5d

    :catch_42
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/gson/stream/JsonReader;

    if-eqz v2, :cond_85

    :try_start_64
    check-cast v0, Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_6a

    goto :goto_85

    :catch_6a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    :goto_85
    iput-object v4, p0, Lu1/a;->e:Ljava/lang/Object;

    iput-object v4, p0, Lu1/a;->d:Landroid/os/ParcelFileDescriptor;

    return-void

    :goto_8a
    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/google/gson/stream/JsonWriter;

    const-string v7, "JsonWriterHelper"

    if-eqz v6, :cond_bb

    :try_start_93
    check-cast v0, Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->flush()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9f} :catch_a0

    goto :goto_bb

    :catch_a0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bb
    :goto_bb
    iget-object v0, p0, Lu1/a;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_de

    :try_start_bf
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_de

    :catch_c3
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_de
    :goto_de
    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/gson/stream/JsonWriter;

    if-eqz v2, :cond_106

    :try_start_e5
    check-cast v0, Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->close()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ea} :catch_eb

    goto :goto_106

    :catch_eb
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    :goto_106
    iput-object v4, p0, Lu1/a;->e:Ljava/lang/Object;

    iput-object v4, p0, Lu1/a;->d:Landroid/os/ParcelFileDescriptor;

    return-void

    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_10  #00000000
    .end packed-switch
.end method

.method public c()Z
    .registers 5

    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/gson/stream/JsonReader;

    const-string v2, "JsonReaderHelper"

    if-eqz v1, :cond_30

    :try_start_9
    check-cast v0, Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasNext e = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uri = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_30
    const-string v0, "hasNext mJsonReader is null, uri = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    const/4 p0, 0x0

    return p0
.end method

.method public d(Landroid/net/Uri;)Z
    .registers 10

    iget v0, p0, Lu1/a;->a:I

    const/4 v1, 0x1

    const-string v2, "open, mPFD is null, uri = "

    const-string v3, ", e = "

    const-string v4, "open, exception uri = "

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_f2

    goto/16 :goto_89

    :pswitch_f  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open uri = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "JsonReaderHelper"

    invoke-static {v6, v0}, Lt1/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lu1/a;->b:Landroid/content/Context;

    if-nez v0, :cond_2a

    goto :goto_87

    :cond_2a
    iput-object p1, p0, Lu1/a;->c:Landroid/net/Uri;

    :try_start_2c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "r"

    invoke-virtual {v0, p1, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lu1/a;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    goto :goto_88

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_67} :catch_68

    goto :goto_84

    :catch_68
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_84
    invoke-virtual {p0}, Lu1/a;->b()V

    :goto_87
    move v1, v5

    :goto_88
    return v1

    :goto_89
    iget-object v0, p0, Lu1/a;->b:Landroid/content/Context;

    const-string v6, "JsonWriterHelper"

    if-nez v0, :cond_95

    const-string p0, "open context is null !"

    invoke-static {v6, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f0

    :cond_95
    iput-object p1, p0, Lu1/a;->c:Landroid/net/Uri;

    :try_start_97
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "wa"

    invoke-virtual {v0, p1, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lu1/a;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v0, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    goto :goto_f1

    :cond_c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_d3} :catch_d4

    goto :goto_ed

    :catch_d4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ed
    invoke-virtual {p0}, Lu1/a;->b()V

    :goto_f0
    move v1, v5

    :goto_f1
    return v1

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_f  #00000000
    .end packed-switch
.end method

.method public e()Lcom/google/gson/JsonObject;
    .registers 6

    iget-object v0, p0, Lu1/a;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/gson/stream/JsonReader;

    const-string v2, "JsonReaderHelper"

    const/4 v3, 0x0

    if-nez v1, :cond_1d

    const-string v0, "readNextJsonObjectString mJsonReader is null, uri = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_1d
    :try_start_1d
    check-cast v0, Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_44

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readNextJsonObjectString e = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uri = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu1/a;->c:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    move-object p0, v3

    :goto_44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    :try_start_4a
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;
    :try_end_55
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4a .. :try_end_55} :catch_56

    return-object p0

    :catch_56
    const-string p0, "JsonSyntaxException JsonParser().parse(jsonObjectString) error"

    invoke-static {v2, p0}, Lt1/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    return-object v3
.end method
