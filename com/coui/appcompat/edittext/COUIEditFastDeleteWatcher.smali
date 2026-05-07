.class public Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public a:Z

.field public b:Z

.field public c:J

.field public d:J

.field public e:Landroid/text/Editable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 11

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->e:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_15

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->b:Z

    return-void

    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->d:J

    sub-long v5, v0, v3

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-lez v5, :cond_2d

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->b:Z

    iput-wide v5, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->d:J

    :cond_2d
    iget-boolean v3, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->b:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3a

    iput-boolean v4, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->b:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->c:J

    :cond_3a
    iget-wide v5, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->c:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0xfa0

    cmp-long v3, v5, v7

    if-gez v3, :cond_4b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->d:J

    return-void

    :cond_4b
    iget-wide v5, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->d:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x64

    cmp-long v0, v0, v5

    if-gez v0, :cond_70

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->e:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    sub-int v1, v0, v1

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->a:Z

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->e:Landroid/text/Editable;

    sub-int v1, v0, v1

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    iput-boolean v4, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->a:Z

    return-void

    :cond_70
    const/4 v0, 0x4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v0, v1, :cond_78

    move v0, v1

    :cond_78
    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->a:Z

    sub-int v0, v1, v0

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->d:J

    iput-boolean v4, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->a:Z

    const-string p0, "COUIEditFastDeleteWatcher"

    const-string p1, "afterTextChanged done"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->a:Z

    if-nez p2, :cond_5

    return-void

    :cond_5
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditFastDeleteWatcher;->e:Landroid/text/Editable;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
