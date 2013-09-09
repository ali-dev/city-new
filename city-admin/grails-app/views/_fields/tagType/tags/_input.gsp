<g:select name="tags"
          from="${bean.tags.name}"
          keys="${bean.tags.id}"
          value="${value?.id}"
          multiple="multiple"
          class="select2 span8 auto"
          data-placeholder="Select tags"
          noSelection="${['':'']}"

>
</g:select>
