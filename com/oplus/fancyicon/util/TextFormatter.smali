.class public Lcom/oplus/fancyicon/util/TextFormatter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/util/TextFormatter$StringVarPara;,
        Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;,
        Lcom/oplus/fancyicon/util/TextFormatter$ExpressioPara;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextFormatter"


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFormatExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mFormatVar:Lcom/oplus/fancyicon/data/Variable;

.field private mIndexedFormatVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mIndexedTextVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

.field private mParas:[Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;

.field private mParasValue:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mTextExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mTextVar:Lcom/oplus/fancyicon/data/Variable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression;)V
    .registers 10

    const-string v2, ""

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 5

    const-string v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mText:Ljava/lang/String;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_29

    new-instance p1, Lcom/oplus/fancyicon/data/Variable;

    iget-object v3, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-direct {p1, v3}, Lcom/oplus/fancyicon/data/Variable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mTextVar:Lcom/oplus/fancyicon/data/Variable;

    iput-object v1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mText:Ljava/lang/String;

    :cond_29
    iput-object p2, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4a

    new-instance p1, Lcom/oplus/fancyicon/data/Variable;

    iget-object p2, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/oplus/fancyicon/data/Variable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormatVar:Lcom/oplus/fancyicon/data/Variable;

    iput-object v1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormat:Ljava/lang/String;

    :cond_4a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5d

    invoke-static {p3, p4}, Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;->buildArray(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)[Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mParas:[Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;

    if-eqz p1, :cond_5d

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    :cond_5d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object p4, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mTextExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    iput-object p5, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormatExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/util/TextFormatter;
    .registers 10

    new-instance v7, Lcom/oplus/fancyicon/util/TextFormatter;

    const-string v0, "text"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "format"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "paras"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "textExp"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v4

    const-string v0, "formatExp"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v5

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object v7
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/util/TextFormatter;
    .registers 15

    new-instance v7, Lcom/oplus/fancyicon/util/TextFormatter;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, p4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p6}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v4

    invoke-interface {p0, p5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p6}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v5

    move-object v0, v7

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object v7
.end method


# virtual methods
.method public getFormat(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormatExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormatVar:Lcom/oplus/fancyicon/data/Variable;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mIndexedFormatVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    if-nez v1, :cond_22

    new-instance v1, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/Variable;->getObjName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormatVar:Lcom/oplus/fancyicon/data/Variable;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/data/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mIndexedFormatVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    :cond_22
    iget-object p0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mIndexedFormatVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    iget-object p0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getText(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mTextExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/util/TextFormatter;->getFormat(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mParas:[Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    :goto_18
    iget-object v2, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mParas:[Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    iget-object v3, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/oplus/fancyicon/util/TextFormatter$FormatPara;->evaluate(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2a
    :try_start_2a
    iget-object p0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catch Ljava/util/IllegalFormatException; {:try_start_2a .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    const-string p0, "Format error: "

    invoke-static {p0, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    iget-object v0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mTextVar:Lcom/oplus/fancyicon/data/Variable;

    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mIndexedTextVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    if-nez v1, :cond_51

    new-instance v1, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/Variable;->getObjName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mTextVar:Lcom/oplus/fancyicon/data/Variable;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/data/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mIndexedTextVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    :cond_51
    iget-object p0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mIndexedTextVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_58
    iget-object p0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public hasFormat()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormatVar:Lcom/oplus/fancyicon/data/Variable;

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mText:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/oplus/fancyicon/util/TextFormatter;->mFormat:Ljava/lang/String;

    return-void
.end method
